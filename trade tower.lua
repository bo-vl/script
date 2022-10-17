local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Hydra Network |Trade Tower|", HidePremium = false,IntroText = "Trade Tower", SaveConfig = false, ConfigFolder = "OrionTest"})
local ownerId = game.CreatorId
game.Players.PlayerAdded:Connect(function(player)
    if player.UserId == ownerId then
        game.Players.LocalPlayer:Kick("Owner Joined")
    end
end)

--tables

autoclick = true
AutoCase = true
CaseSelect = "Starter"
AutoClickUpgrade = true

--functions

function functionautoclick()
    while AutoClickUpgrade == true do
        local ohString1 = "Upgrade"
        local ohString2 = "Clicks"
        game:GetService("ReplicatedStorage").Events.StoreActions:InvokeServer(ohString1, ohString2)
        wait()
    end
end

function functionautoclick()
    while autoclick == true do
        game:GetService("ReplicatedStorage").Events.ClientClick:FireServer()
        wait()
    end
end

function Autocase()
    while AutoCase == true do
        local ohString1 = (CaseSelect)
        game:GetService("ReplicatedStorage").Events.OpenCase:InvokeServer(ohString1)
        wait(1)
    end
end

--tabs

local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab = Window:MakeTab({
	Name = "Extra",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local BuyTab = Window:MakeTab({
    Name = "Buy Case",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


--sliders
local TargetWalkspeed
MainTab:AddSlider({
	Name = "Speed",
	Min = -2,
	Max = 100,
	Default = -2,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end   
})

--toggles

MainTab:AddToggle({
	Name = "Auto Click",
	Default = false,
	Callback = function(Value)
        autoclick = Value
        functionautoclick()
	end    
})

BuyTab:AddLabel("Auto Buy case")

BuyTab:AddToggle({
	Name = "Auto Buy Case",
	Default = false,
	Callback = function(Value)
        AutoCase = Value
        Autocase()
	end    
})

--buttons

MiscTab:AddButton({
	Name = "All Codes",
	Callback = function()
        local ohString1 = "Code"
        local ohString2 = "500"
        game:GetService("ReplicatedStorage").Events.StoreActions:InvokeServer(ohString1, ohString2)
        wait()
        local ohString1 = "Code"
        local ohString2 = "12klikes"
        game:GetService("ReplicatedStorage").Events.StoreActions:InvokeServer(ohString1, ohString2)
        wait()
        local ohString1 = "Code"
        local ohString2 = "8mvisits"
        game:GetService("ReplicatedStorage").Events.StoreActions:InvokeServer(ohString1, ohString2)
        wait()
  	end    
})

MiscTab:AddButton({
	Name = "Afk",
	Callback = function()
        local ohBoolean1 = true
        game:GetService("ReplicatedStorage").Events.AFK:FireServer(ohBoolean1)
  	end    
})

--DropDowns

BuyTab:AddDropdown({
	Name = "Select Case",
	Default = "Starter",
	Options = {"Starter", "Noobie", "Stepping", "Learning", "Funding", "Business", "Legendary", "Marcellus", "Famous", "Mythic", "Eirene", "Aeschylus", "Olysseus", "Elegant", "Ornate"},
	Callback = function(Value)
        CaseSelect = Value
	end    
})

--other toggles

BuyTab:AddLabel("Auto Upgrade")

BuyTab:AddToggle({
	Name = "Auto Upgrade Click",
	Default = false,
	Callback = function(Value)
        AutoClickUpgrade = Value
        functionautoclick()
	end    
})


--others

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/100)
        end
    end)
end)

OrionLib:Init()