
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

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

	game:GetService("Players").LocalPlayer.Values.InGame.Changed:Connect(function()
		game:GetService("Players")[tostring(findOpponent().opponent)].Values.Shooting.Changed:Connect(function(newValue)
		print('check 0')
	print(getgenv().AutoBlock)
    if newValue == true then
			print('check 1')
	if getgenv().AutoBlock == true then
				print('check 2')
    game:GetService("ReplicatedStorage").Events.Block:FireServer()
    end
end
end)

	end)
