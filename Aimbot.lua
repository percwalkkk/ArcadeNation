local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if getgenv().Aimbot then
	if input.KeyCode == Enum.KeyCode.E then
		getgenv().Aimbot = {toggled = true, releaseTime = -1}

		local aimbotReleaseArguments = {true, 100, [4] = false}
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shoot"):FireServer(unpack(aimbotReleaseArguments))
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shoot"):FireServer(false, Aimbot.releaseTime, false)
	end else return
	end
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end
	if getgenv().Aimbot then
	if input.KeyCode == Enum.KeyCode.ButtonX then
		getgenv().Aimbot = {toggled = true, releaseTime = -1}

		local aimbotReleaseArguments = {true, 100, [4] = false}
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shoot"):FireServer(unpack(aimbotReleaseArguments))
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Shoot"):FireServer(false, Aimbot.releaseTime, false)
	end else return
	end
end)
