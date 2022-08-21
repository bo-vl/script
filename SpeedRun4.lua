local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "bo's script Hub|Speed Run 4|", HidePremium = false, IntroText = "Speed Run 4", SaveConfig = false, ConfigFolder = "OrionTest"})

--values
_G.GetAllLvls = true
_G.getstars = true


--functions

function GetAllLvls()
while _G.GetAllLvls == true do
    local args = {
        [1] = 1660243517.868455,
        [2] = "Level 1",
        [3] = "Normal",
        [4] = false
    }
    game:GetService("ReplicatedStorage").BeatLevel:FireServer(unpack(args))
    wait(0.5)        
end
end

function GetAllStars()
while _G.getstars == true do
    local args = {
        [1] = "Level 1"
    } 
    game:GetService("ReplicatedStorage").GotStar:FireServer(unpack(args))
    wait(1)        
end
end

--tabs

local Autofarm = Window:MakeTab({
Name = "Autofarm",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})

local Dimension = Window:MakeTab({
Name = "Dimension",
Icon = "rbxassetid://4483345998",
PremiumOnly = false
})



--toggles

Autofarm:AddToggle({
Name = "Get All LVLS (Switch Dimension When lvl 30)",
Default = false,
Callback = function(Value)
    _G.GetAllLvls = Value
    GetAllLvls()
end 
})

Autofarm:AddToggle({
Name = "Get Free Stars",
Default = false,
Callback = function(Value)
    _G.getstars = Value
    GetAllStars()
end    
})

--buttons

Dimension:AddButton({
Name = "Switch to Normal",
Callback = function()
    local args = {
        [1] = "Normal"
    }  
    game:GetService("ReplicatedStorage").SetDimension:FireServer(unpack(args))        
  end    
})

Dimension:AddButton({
Name = "Switch too Peach Desert",
Callback = function()
    local args = {
        [1] = "Peach Desert"
    }
    game:GetService("ReplicatedStorage").SetDimension:FireServer(unpack(args))
  end    
})

Dimension:AddButton({
Name = "Switch too Cybernaut",
Callback = function()
    local args = {
        [1] = "Cybernaut"
    }
    game:GetService("ReplicatedStorage").SetDimension:FireServer(unpack(args))
  end    
})

Dimension:AddButton({
Name = "Switch too Cosmic",
Callback = function()
    local args = {
        [1] = "Cosmic"
    }
    game:GetService("ReplicatedStorage").SetDimension:FireServer(unpack(args))
  end    
})

Dimension:AddButton({
Name = "Switch too Moon",
Callback = function()
    local args = {
        [1] = "Moon"
    }
    game:GetService("ReplicatedStorage").SetDimension:FireServer(unpack(args))
  end 
})

Dimension:AddButton({
Name = "Switch too Chromium",
Callback = function()
    local args = {
        [1] = "Chromium"
    }
    game:GetService("ReplicatedStorage").SetDimension:FireServer(unpack(args))
  end 
})

Dimension:AddButton({
Name = "Switch too Birchock",
Callback = function()
    local args = {
        [1] = "Birchock"
    }
    game:GetService("ReplicatedStorage").SetDimension:FireServer(unpack(args))
  end 
})

setclipboard("https://discord.gg/k9a4zym5uG")

OrionLib:MakeNotification({
Name = "Join Discord",
Content = "Join the Discord Copied in your clip Board",
Image = "rbxassetid://4483345998",
Time = 5
})

OrionLib:Init()    
