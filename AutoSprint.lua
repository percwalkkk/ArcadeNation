local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

RunService.RenderStepped:Connect(function()

if getgenv().AutoSprint then
		game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Sprint"):FireServer(true)
	end
  end)
