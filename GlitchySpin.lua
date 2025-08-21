local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

-- Spin settings
local spinTime = 0.7 -- duration of spin in seconds
local spinning = false

local function Spin()
	if spinning then return end
	spinning = true
	local char = LocalPlayer.Character
	if not char or not char:FindFirstChild("HumanoidRootPart") then
		spinning = false
		return
	end
	local hrp = char.HumanoidRootPart
	local startCFrame = hrp.CFrame
	local elapsed = 0

	local connection
	connection = RunService.RenderStepped:Connect(function(dt)
		elapsed += dt
		local alpha = math.clamp(elapsed / spinTime, 0, 1)
		local angle = math.rad(360 * alpha)

		-- Smooth rotation
		hrp.CFrame = startCFrame * CFrame.Angles(0, angle, 0)

		if alpha >= 1 then
			connection:Disconnect()
			spinning = false
		end
	end)
end


if game:GetService("Players").LocalPlayer.Values.Hand.Value == false then
-- left hand glitch dribble
local args = {
	{
		Enum.KeyCode.V,
		Enum.KeyCode.V
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args))

local args1 = {
	{
		Enum.KeyCode.C,
		Enum.KeyCode.C
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args1))

wait(1)
Spin()
end

if game:GetService("Players").LocalPlayer.Values.Hand.Value == true then
  local args = {
	{
		Enum.KeyCode.V,
		Enum.KeyCode.V
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args))

  local args1 = {
	{
		Enum.KeyCode.Z,
		Enum.KeyCode.Z
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args1))

end
