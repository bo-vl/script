if game.PlaceId == 9498006165 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "bo's script|Tapping Simulator!|", HidePremium = false, IntroText = "Bo's Script Hub", SaveConfig = false, ConfigFolder = "OrionTest"})

    --values
    _G.autoclick = true
    _G.autorebirth = true

    --funcation
    function autoclick()
    while _G.autoclick == true do
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        Wait()
    end
end
    function autorebirth()
   while  _G.autorebirth == true do
        local args = {[1] = 1}
        game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(unpack(args))
        wait()
    end
end

    --tabs
    local farmsy = Window:MakeTab({
        Name = "auto farm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    --toggles
    farmsy:AddToggle({
        Name = "autofarm",
        Default = false,
        Callback = function(Value)
            _G.autoclick = Value
            autoclick()
        end    
    })

    farmsy:AddToggle({
        Name = "auto rebirth",
        Default = false,
        Callback = function(Value)
            _G.autorebirth = Value
            autorebirth()
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

elseif game.PlaceId == 8884334497 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "bo's script |Mining Clicker Simulator|", HidePremium = false,IntroText = "Bo's Script Hub", SaveConfig = false, ConfigFolder = "OrionTest"})

    --auto farm
_G.autoclicker = true
_G.autorebirth = true

--upgrades values
_G.speedupgrade = true
_G.Orepay = true
_G.PetStorage = true 
_G.Autoclickspeed = true
_G.Petsmore = true

--egg values
_G.Eggs1 = true
_G.Eggs2 = true
_G.Eggs3 = true
_G.Eggs4 = true
_G.Eggs5 = true
_G.Eggs6 = true
_G.Eggs7 = true
_G.Eggs8 = true
_G.Eggs9 = true 
_G.Eggs10 = true
_G.Eggs11 = true
_G.Eggs12 = true
_G.Eggs13 = true

    --autofarm functinos
function autoclicker()
    while _G.autoclicker == true do
        game:GetService("ReplicatedStorage").Remotes.Click:InvokeServer()
        wait()
    end
end

function autorebirth()
    while _G.autorebirth == true do
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
        wait(1)
    end
end

--upgrade functions

function speedupgrade()
    while _G.speedupgrade == true do
        local args = {
            [1] = "Player Speed"
        }
        game:GetService("ReplicatedStorage").Remotes.upgradePlr:FireServer(unpack(args))
        wait(2)        
    end
end

function Orepay()
    while _G.Orepay == true do
        local args = {
            [1] = "Ore Pay"
        }
        game:GetService("ReplicatedStorage").Remotes.upgradePlr:FireServer(unpack(args))
        wait(2)        
    end
end 

function PetStorage()
    while _G.PetStorage == true do
        local args = {
            [1] = "Pet Storage"
        }
        game:GetService("ReplicatedStorage").Remotes.upgradePlr:FireServer(unpack(args))
        wait(2)
    end
end

function Autoclickspeed()
    while _G.Autoclickspeed == true do
        local args = {
            [1] = "Auto Click Speed"
        }
        game:GetService("ReplicatedStorage").Remotes.upgradePlr:FireServer(unpack(args))
        wait(2)
    end
end

function Petsmore()
    while _G.Petsmore == true do
        local args = {
            [1] = "Pets Equipped"
        }
        game:GetService("ReplicatedStorage").Remotes.upgradePlr:FireServer(unpack(args))
        wait(2)        
    end
end

--egg functions

function Eggs1()
    while _G.Eggs1 == true do
        local args = {
            [1] = "Starter Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)
    end
end

function Eggs2()
    while _G.Eggs2 == true do
        local args = {
            [1] = "Spotted Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)
    end 
end        

function Eggs3()
    while _G.Eggs3 == true do
        local args = {
            [1] = "Floral Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)
    end
end 

function Eggs4()
    while _G.Eggs4 == true do
        local args = {
            [1] = "Desert Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)        
    end
end

function Eggs5()
    while _G.Eggs5 == true do
        local args = {
            [1] = "Snow Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)        
    end
end

function Eggs6()
    while _G.Eggs6 == true do
        local args = {
            [1] = "Cave Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)        
    end
end

function Eggs7()
    while _G.Eggs7 == true do
        local args = {
            [1] = "Ocean Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)        
    end
end

function Eggs8()
    while _G.Eggs8 == true do
        local args = {
            [1] = "Jungle Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)        
    end
end

function Eggs9()
    while _G.Eggs9 == true do
        local args = {
            [1] = "Culcano Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)        
    end
end

function Eggs10()
    while _G.Eggs10 == true do
        local args = {
            [1] = "Space Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)
    end
end

function Eggs11()
    while _G.Eggs11 == true do
        local args = {
            [1] = "Undead Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)        
    end
end

function Eggs12()
    while _G.Eggs12 == true do
        local args = {
            [1] = "Heavenly Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)        
    end
end 

function Eggs13()
    while _G.Eggs13 == true do
        local args = {
            [1] = "Devil Egg",
            [2] = 1
        }
        game:GetService("ReplicatedStorage").Remotes.buyEgg:InvokeServer(unpack(args))
        wait(1)        
    end
end

    --tabs
local autofarm = Window:MakeTab({
	Name = "auto farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local eggs = Window:MakeTab({
	Name = "Eggs",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Upgrades = Window:MakeTab({
	Name = "Player Upgrades",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


    --autofarm toggles

    local autofarm1 = autofarm:AddSection({
        Name = "Auto click"
    })

autofarm:AddToggle({
	Name = "Clicker",
	Default = false,
	Callback = function(Value)
		_G.autoclicker = Value
        autoclicker() 
	end    
})

    local autofarm2 = autofarm:AddSection({
	    Name = "auto Rebirth"
    })

autofarm:AddToggle({
	Name = "Rebirth",
	Default = false,
	Callback = function(Value)
		_G.autorebirth = Value
        autorebirth()
	end    
})

--upgrades toggles

Upgrades:AddToggle({
	Name = "Ore pay upgrade",
	Default = false,
	Callback = function(Value)
		_G.Orepay = Value
        Orepay()
	end    
})

Upgrades:AddToggle({
	Name = "Pet Storage",
	Default = false,
	Callback = function(Value)
		_G.PetStorage = Value
        PetStorage()
	end    
})

Upgrades:AddToggle({
	Name = "Player speed upgrade",
	Default = false,
	Callback = function(Value)
		_G.speedupgrade = Value
        speedupgrade()
	end    
})

Upgrades:AddToggle({
	Name = "Auto Click Speed Upgrade",
	Default = false,
	Callback = function(Value)
		_G.Autoclickspeed = Value
        Autoclickspeed()
	end    
})

Upgrades:AddToggle({
	Name = "Pets Equipped",
	Default = false,
	Callback = function(Value)
        _G.Petsmore = Value
        Petsmore()
	end    
})

--egg toggles

local world1 = eggs:AddSection({
	Name = "Spawn"
})

eggs:AddToggle({
	Name = "Starter Egg 1 |Cost 320",
	Default = false,
	Callback = function(Value)
        _G.Eggs1 = Value
        Eggs1()
	end    
})

eggs:AddToggle({
	Name = "Starter Egg 2 |Cost 1.2k",
	Default = false,
	Callback = function(Value)
		_G.Eggs2 = Value
        Eggs2()
	end    
})

eggs:AddToggle({
	Name = "Starter Egg 3 |Cost 10k",
	Default = false,
	Callback = function(Value)
		_G.Eggs3 = Value
        Eggs3()
	end    
})

local world2 = eggs:AddSection({
	Name = "Desert"
})

eggs:AddToggle({
	Name = "desert Egg |Cost 100k",
	Default = false,
	Callback = function(Value)
		_G.Eggs4 = Value
        Eggs4()
	end    
})

local world3 = eggs:AddSection({
	Name = "Snow"
})

eggs:AddToggle({
	Name = "Snow Egg |Cost 1m",
	Default = false,
	Callback = function(Value)
		_G.Eggs5 = Value
        Eggs5()
	end    
})

local world4 = eggs:AddSection({
	Name = "Cave"
})

eggs:AddToggle({
	Name = "Cave Egg |Cost 7.5m",
	Default = false,
	Callback = function(Value)
		_G.Eggs6 = Value
        Eggs6()
	end    
})

local world5 = eggs:AddSection({
	Name = "Ocean"
})

eggs:AddToggle({
	Name = "Ocean Egg |Cost 20m",
	Default = false,
	Callback = function(Value)
		_G.Eggs7 = Value
        Eggs7()
	end    
})

local world6 = eggs:AddSection({
	Name = "Jungle"
})

eggs:AddToggle({
	Name = "Jungle Egg |Cost 120m",
	Default = false,
	Callback = function(Value)
		_G.Eggs8 = Value
        Eggs8()
	end    
})

local world7 = eggs:AddSection({
	Name = "Volcano"
})

eggs:AddToggle({
	Name = "Vulcano Egg |Cost 400m",
	Default = false,
	Callback = function(Value)
		_G.Eggs9 = Value
        Eggs9()
	end    
})

local world8 = eggs:AddSection({
	Name = "Space"
})

eggs:AddToggle({
	Name = "Space Egg |Cost 1.8B",
	Default = false,
	Callback = function(Value)
		_G.Eggs10 = Value
        Eggs10()
	end    
})

local world9 = eggs:AddSection({
	Name = "Undead Forest"
})

eggs:AddToggle({
	Name = "Undead Egg |Cost 15b",
	Default = false,
	Callback = function(Value)
        _G.Eggs11 = Value
        Eggs11()
	end    
})

local world10 = eggs:AddSection({
	Name = "Heaven"
})

eggs:AddToggle({
	Name = "Heavenly Egg |150b",
	Default = false,
	Callback = function(Value)
		_G.Eggs12 = Value
        Eggs12()
	end    
})

local world11 = eggs:AddSection({
	Name = "Hell Dungeon"
})

eggs:AddToggle({
	Name = "Devil Egg |Cost 500b",
	Default = false,
	Callback = function(Value)
		_G.Eggs13 = Value
        Eggs13()
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

elseif game.PlaceId == 10108131074 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "bo's script|Mow The Lawn!|", HidePremium = false, IntroText = "Bo's Script Hub", SaveConfig = false, ConfigFolder = "OrionTest"})

    --values
    _G.autoMowlawn = true
    _G.AutoRefill = true

    --functions

function AutoRefill()
    while _G.AutoRefill == true do
        local args = {
            [1] = workspace.Map.Zones:FindFirstChild("1"):FindFirstChild("1").GasStation.GasPumps,
            [2] = true
        }
        game:GetService("ReplicatedStorage").Remotes.Game.ClientToggleUseGasStation:FireServer(unpack(args))        
        wait()
    end
end

function autoMowlawn()
    while _G.autoMowlawn == true do
        local args = {
            [1] = "1"
        }
        game:GetService("ReplicatedStorage").Remotes.Game.ClientMowGrass:FireServer(unpack(args))
        wait()        
    end
end

    --tabs

    local Autofarm = Window:MakeTab({
        Name = "AutoFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })
    
    local Teleport = Window:MakeTab({
        Name = "Teleport",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    })


    --toggles

    Autofarm:AddToggle({
        Name = "Auto Mown Lawn (only mowns the first lvl grass)",
        Default = false,
        Callback = function(Value)
            _G.autoMowlawn = Value
            autoMowlawn()
        end    
    })

    Autofarm:AddToggle({
        Name = "Auto FIll (turn on and off)",
        Default = false,
        Callback = function(Value)
            _G.AutoRefill = Value
            AutoRefill()
        end    
    })


    --buttons

    Teleport:AddButton({
        Name = "Teleport to Spawn",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-842.40966796875, 9.167582511901855, -381.2168884277344)
          end    
    })

    Teleport:AddButton({
        Name = "Teleport to Dry Desert",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-713.3103637695312, 8.9959077835083, -384.0533142089844)
          end    
    })

    Teleport:AddButton({
        Name = "Teleport to Winter Land",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-529.0731811523438, 8.996052742004395, -359.2351989746094)
          end    
    })

    Teleport:AddButton({
        Name = "Teleport to Magic Forest",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.81842041015625, 8.996052742004395, -370.8318176269531)
          end    
    })

    Teleport:AddButton({
        Name = "Teleport to Volcano Peak",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-152.5965576171875, 8.996052742004395, -383.3328552246094)
          end    
    })

    Teleport:AddButton({
        Name = "Teleport to Candy Land",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49.834590911865234, 8.996052742004395, -384.79681396484375)
          end    
    })

    Teleport:AddButton({
        Name = "Teleport to Toxic Wasteland",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(231.68373107910156, 8.996052742004395, -384.282470703125)
          end    
    })

    Teleport:AddButton({
        Name = "Teleport to Autumn Forest",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(421.39739990234375, 10.909392356872559, -379.7950134277344)
          end    
    })

    Teleport:AddButton({
        Name = "Teleport to The Beach",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(610.1732177734375, 8.9959077835083, -373.2803039550781)
          end    
    })

    Teleport:AddButton({
        Name = "Teleport to FarmLand",
        Callback = function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(798.1015014648438, 8.9959077835083, -368.381591796875)
          end    
    })

OrionLib:Init()

elseif game.PlaceId == 183364845 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "bo's script|Speed Run 4|", HidePremium = false, IntroText = "Bo's Script Hub", SaveConfig = false, ConfigFolder = "OrionTest"})

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

end
