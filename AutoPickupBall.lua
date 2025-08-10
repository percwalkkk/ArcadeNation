local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

local currentPos;

RunService.RenderStepped:Connect(function()
    if getgenv().AutoPickupBall then
        if game:GetService("Players").LocalPlayer.Values.Basketball == nil then

		currentPos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Practice_Court.BallRack.CFrame; wait(2)
		fireproximityprompt(workspace.Practice_Court.BallRack.ProximityPrompt); wait()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentPos
		end
    end
  end)
