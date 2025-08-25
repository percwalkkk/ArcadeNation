local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local LocalPlayer = Players.LocalPlayer
local UserInputService = game:GetService("UserInputService")


RunService.RenderStepped:Connect(function()
if getgenv().DribbleGlide then
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ball") then
        game.Players.LocalPlayer.Character.Humanoid:Move(Vector3.new(0,0,-1), true) -- Always forward relative to camera
        local camCF = workspace.CurrentCamera.CFrame
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame:Lerp(
            CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.Position, game.Players.LocalPlayer.Character.HumanoidRootPart.Position + camCF.LookVector),
            0.25
        )
        end
    end
  end)
