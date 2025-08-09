local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")

RunService.RenderStepped:Connect(function()
if getgenv().SpeedBoost and char:FindFirstChild("Humanoid") and char.Humanoid.MoveDirection.Magnitude > 0 then
        local moveDirection = char.Humanoid.MoveDirection
        hrp.AssemblyLinearVelocity = moveDirection * char.Humanoid.WalkSpeed * getgenv().SpeedMultiplier + Vector3.new(0, hrp.AssemblyLinearVelocity.Y, 0)
    end
  end)
