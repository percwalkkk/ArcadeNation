-- Spinbot Script (Works While Moving)
-- Toggle with "J"

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

-- Disable Humanoid autorotation
local function disableAutoRotate()
	local char = LocalPlayer.Character
	if char and char:FindFirstChildOfClass("Humanoid") then
		char:FindFirstChildOfClass("Humanoid").AutoRotate = false
	end
end

LocalPlayer.CharacterAdded:Connect(disableAutoRotate)
disableAutoRotate()



-- Main spin loop
local rotation = 0
local spinsp;
RunService.RenderStepped:Connect(function(dt)
    spinsp = getgenv().SpinSpeed * 360
	if getgenv().SpinBot then
		local char = LocalPlayer.Character
		if char and char:FindFirstChild("HumanoidRootPart") then
			local hrp = char.HumanoidRootPart
			
			rotation = (rotation + spinsp * dt) % 360
			local pos = hrp.Position
			
			hrp.CFrame = CFrame.new(pos) * CFrame.Angles(0, math.rad(rotation), 0)
		end
	end
end)
