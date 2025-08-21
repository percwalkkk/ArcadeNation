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

getgenv().currentOpponent = findOpponent().opponent
getgenv().currentCourt = findOpponent().court

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
coroutine.wrap(function()
RunService.RenderStepped:Connect(function()
        getgenv().currentOpponent = findOpponent().opponent
                getgenv().currentCourt = findOpponent().court
                wait(1)
    end)
    end)()
game:GetService("Players").LocalPlayer.Values.InGame.Changed:Connect(function()
  if game:GetService("Players").LocalPlayer.Values.InGame.Value == true then
  getgenv().currentOpponent = findOpponent().opponent
  getgenv().currentCourt = findOpponent().court
  end
end)
