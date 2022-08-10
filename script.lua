if game.PlaceId == 9498006165 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "bo's script|Tapping Simulator!|", HidePremium = false, IntroText = "bo's cool script", SaveConfig = true, ConfigFolder = "OrionTest"})

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
    
OrionLib:Init()

elseif game.PlaceId == 8884334497 then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
    local Window = OrionLib:MakeWindow({Name = "bo's script |Mining Clicker Simulator|", HidePremium = false,IntroText = "bo's cool script", SaveConfig = true, ConfigFolder = "OrionTest"})

    --values
_G.autoclicker = true

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

    --functions
function autoclicker()
    while _G.autoclicker == true do
        game:GetService("ReplicatedStorage").Remotes.Click:InvokeServer()
        wait()
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

--sections

local world1 = eggs:AddSection({
	Name = "world 1"
})

    --autofarm toggles
autofarm:AddToggle({
	Name = "Auto Clicker",
	Default = false,
	Callback = function(Value)
		_G.autoclicker = Value
        autoclicker() 
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

eggs:AddToggle({
	Name = "Starter Egg 1",
	Default = false,
	Callback = function(Value)
        _G.Eggs1 = Value
        Eggs1()
	end    
})

eggs:AddToggle({
	Name = "Starter Egg 2",
	Default = false,
	Callback = function(Value)
		_G.Eggs2 = Value
        Eggs2()
	end    
})

eggs:AddToggle({
	Name = "Starter Egg 3",
	Default = false,
	Callback = function(Value)
		_G.Eggs3 = Value
        Eggs3()
	end    
})




OrionLib:Init()

end