
--// Stuff
_G.event = {
    train = game:GetService("ReplicatedStorage").Remotes.train
}

_G.thingsnames = {
    strength = "str",
    durability = "dur",
    agility = "agi"
}

_G.Teleport = {
    ["Gym"] = CFrame.new(-456, 37, 753),
    ["Swamp"] = CFrame.new(-931, 23, 819),
    ["Gon's House"] = CFrame.new(-382, 37, 878),
    ["Arm Wrestling"] = CFrame.new(-208, 20, -1072),
    ["Nen Impact"] = CFrame.new(-535.5, -7.99999809, -882, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Willow"] = CFrame.new(-19, 30.5, -873, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Mansion"] = CFrame.new(-11.7000017, 41.2750092, -1287.52991, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Ice Ruins"] = CFrame.new(494, 2.90465546, -564.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Zevil"] = CFrame.new(1128.1499, 18.6345177, 339.649994, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Trick"] = CFrame.new(1182.5, 57.6345177, 763.5, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Wetlands"] = CFrame.new(750, 18.6345177, 776, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["StandOff"] = CFrame.new(646.309998, 28.5599995, -1027.02991, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["Trail"] = CFrame.new(-151.399994, 21.4750099, -607.629883, 1, 0, 0, 0, 1, 0, 0, 0, 1),
}


--// UI Library
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Invooker1/UI-Libraries/main/Kavo%20UI%20Lib%20-%20Modified"))()
local Window = Library.CreateLib("Nen Thing Simulator", "DarkTheme")

--// Tabs
local Tab = Window:NewTab("AutoFarm")
local Tab2 = Window:NewTab("Zones")

--// Sections
local Section = Tab:NewSection("Nen Totally Simulator")
local Section2 = Tab2:NewSection("Nen Simulator TP")

--// Toggles and Dropdown
Section:NewToggle("Strength", "Strength farm", function(state)
    _G.loop = state
    if state then
        while _G.loop do
        wait(.1)
        _G.event.train:FireServer(_G.thingsnames.strength)
        end
    else
        print("Toggle Off")
    end
end)

Section:NewToggle("Durability", "Durability farm", function(state)
    _G.loop = state
    if state then
        while _G.loop do
            wait(.1)
            _G.event.train:FireServer(_G.thingsnames.durability)
        end
    else
        print("Toggle Off")
    end
end)

Section:NewToggle("Agility", "Agility farm", function(state)
    _G.loop = state
    if state then
        while _G.loop do
            wait(.1)
            _G.event.train:FireServer(_G.thingsnames.agility)
        end
    else
        print("Toggle Off")
    end
end)

Section2:NewDropdown("Training Zones", "Teleport To Stuff", _G.Teleport, function(currentOption)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = currentOption
end)
