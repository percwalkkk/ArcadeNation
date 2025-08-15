local greeneffect = {'Pink', 'Purple', 'Red', 'Bat', 'Cash', 'Crown', 'Robux', 'Fire', 'Water', 'Green', 'Lightning', 'Tornado', 'Angel', 'Rainbow', 'Anime Beam', 'Black Hole', 'Cupid'}

--local value = Instance.new("StringValue", game.Players.LocalPlayer.Profile.Inventory.GreenEffect)

for i,v in pairs(greeneffect) do
    local value = Instance.new("StringValue", game.Players.LocalPlayer.Profile.Inventory.GreenEffect)
    value.Name = v
end

local greensounds = {'Anime Slash', 'Anime Squeak', 'Crystal Chime', 'Lazer Zap', 'Wind Woosh', 'Anime Swoosh', 'Beam', 'Level Up Chime', 'Metal Clang', 'MLG Hitmarker', 'Sword Slash', 'Anime Radar', 'Basketball Swish', 'Vine Boom', 'Water Splash', 'Windows XP Error', 'Yee Dinosaur', 'YEEET', 'Wow', 'What are those', 'Anime Charge', 'Bruh', 'Cha-ching', 'Crowd Gasp', 'Lighthearted Fanfare', 'Silly Laugh', 'Ultra Explosion', 'Meow Mix', 'Oh Baby A Triple', 'Sad Trombome', 'Sad Violin', 'Screaming Goat', 'Shut Up And Take My Money', 'Wooden Knock', 'Airhorn', 'Anime Wow', 'Epic Sax Guy', 'NANI', 'Prepare To Fight', 'Sheeesh', 'Sus', 'Thug Life'}

for i,v in pairs(greensounds) do
    local value = Instance.new("StringValue", game.Players.LocalPlayer.Profile.Inventory.GreenSound)
    value.Name = v
end

local banners = {'Camo', 'Crimson', 'Dark Lights', 'Hardwood', 'Lightning', 'Red VS Blue', 'Purple Lightning', 'Red Galaxy', 'Golden', 'Abstract', 'Modern Cold', 'Modern Warm'}
for i,v in pairs(banners) do
    local value = Instance.new("StringValue", game.Players.LocalPlayer.Profile.Inventory.Banner)
    value.Name = v
end
local mascot = {'Dino', 'Roxie', 'Clutch', 'Bulldog'}

for i,v in pairs(mascot) do
    local value = Instance.new("StringValue", game.Players.LocalPlayer.Profile.Inventory.Mascot)
    value.Name = v
end
