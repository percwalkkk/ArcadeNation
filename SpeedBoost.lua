local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
local hrp = char:WaitForChild("HumanoidRootPart")
local humanoid = char:WaitForChild("Humanoid")
local runService = game:GetService("RunService")
local uis = game:GetService("UserInputService")

runService.RenderStepped:Connect(function()
	if getgenv().SpeedBoost and humanoid.MoveDirection.Magnitude > 0 then
		-- Move the HRP manually using CFrame
		hrp.CFrame = hrp.CFrame + (humanoid.MoveDirection * getgenv().SpeedMultiplier)
	end
end)
