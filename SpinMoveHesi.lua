if game:GetService("Players").LocalPlayer.Values.Hand.Value == false then
	local args1 = {
	{
		Enum.KeyCode.C,
		Enum.KeyCode.C
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args1))
local args = {
	{
		Enum.KeyCode.Z
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args))
end
---------------
if game:GetService("Players").LocalPlayer.Values.Hand.Value == true then
	local args1 = {
	{
		Enum.KeyCode.Z,
		Enum.KeyCode.Z
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args1))
local args = {
	{
		Enum.KeyCode.C
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args))

end
