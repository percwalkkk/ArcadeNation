
local lastUpdate = 0;
local courts = workspace.Courts;
local findOpponent = function()
    local values = {court, opponent};
   for __, court in pairs (game.Workspace.Courts:GetDescendants()) do
   if string.find(court.Name, 'Player') and court.Value == game.Players.LocalPlayer.Name then
    values.court = court.Parent.Parent.Name

    if court.Name == 'Player2' then
    values.opponent = game.Players[court.Parent.Player1.Value]
        elseif court.Name == 'Player1' then
        values.opponent = game.Players[court.Parent.Player2.Value]
            end
        end
    end
    return values
end

getgenv().autoToggleGuard = false
getgenv().AGFollowingDistance = 0;

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local toggled = false
local isMovingManually = false

-- Track manual movement input
local movementKeys = {
	[Enum.KeyCode.W] = true,
	[Enum.KeyCode.A] = true,
	[Enum.KeyCode.S] = true,
	[Enum.KeyCode.D] = true,
	[Enum.KeyCode.Thumbstick1] = true,
}

-- Handle input
UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end

	if input.KeyCode == Enum.KeyCode.P then
		toggled = not toggled
		print("AutoGuard: " .. (toggled and "ON" or "OFF"))
	end

	if movementKeys[input.KeyCode] then
		isMovingManually = true
	end
end)


UserInputService.InputEnded:Connect(function(input)
	if movementKeys[input.KeyCode] then
		local stillMoving = false
		for key in pairs(movementKeys) do
			if UserInputService:IsKeyDown(key) then
				stillMoving = true
				break
			end
		end
		isMovingManually = stillMoving
	end
end)


-- Main logic
RunService.RenderStepped:Connect(function()

		--[[lastUpdate += dt
	if lastUpdate < 0.07 then return end
	lastUpdate = 0]]
		
	if not getgenv().AutoGuard then return end

    if LocalPlayer.Values.InGame.Value ~= true then
    return
end

	local myChar = LocalPlayer.Character
	if not myChar or not myChar:FindFirstChild("HumanoidRootPart") or not myChar:FindFirstChildOfClass("Humanoid") then return end

	if LocalPlayer.Values.Basketball.Value ~= nil then
        getgenv().AutoGuard = false
		return
	end

	if isMovingManually then return end

	local myHRP = myChar.HumanoidRootPart
	local humanoid = myChar:FindFirstChildOfClass("Humanoid")

	local targetPlayer = getgenv().currentOpponent
	if not (targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart")) then return end

	local targetHRP = targetPlayer.Character.HumanoidRootPart
	local velocity = targetHRP.Velocity

	if velocity.Magnitude < 1 then
		velocity = targetHRP.CFrame.LookVector * 2
	end

	local opponentMoveDir = Vector3.new(velocity.X, 0, velocity.Z).Unit
	local spacingDistance = 3 

	local targetPosition = targetHRP.Position + opponentMoveDir * spacingDistance

	local toTarget = targetPosition - game.Players.LocalPlayer.Character.HumanoidRootPart.Position
	local moveDir = Vector3.new(toTarget.X, 0, toTarget.Z)

	if moveDir.Magnitude > 1 then
		humanoid:Move(moveDir.Unit, false)
	else
		humanoid:Move(Vector3.zero, false)
        ReplicatedStorage.Events.Guard:FireServer(true)

	end
		if findOpponent().opponent then
		findOpponent().opponent.Values.Shooting.Changed:Connect(function(newValue)
		print('check 0')
	print(getgenv().AutoBlock)
    if newValue == true then
			print('check 1')
	if getgenv().AutoBlock == true then
				print('check 2')
    ReplicatedStorage.Events.Block:FireServer()
    end
end
end)
		end

	end)
