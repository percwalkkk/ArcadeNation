if game:GetService("Players").LocalPlayer.Values.Hand.Value == true then
local args = {
	{
		Enum.KeyCode.C,
		Enum.KeyCode.X
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args))

game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(Enum.KeyCode.C,Enum.KeyCode.X)
local args2 = {
	{
		Enum.KeyCode.C,
		Enum.KeyCode.C
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args2))
end

if game:GetService("Players").LocalPlayer.Values.Hand.Value == false then

local args3 = {
	{
		Enum.KeyCode.Z,
		Enum.KeyCode.X
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args3))

local args4 = {
	{
		Enum.KeyCode.Z,
		Enum.KeyCode.Z
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Dribble"):FireServer(unpack(args4))
end
