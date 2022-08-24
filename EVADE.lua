game:GetService("ReplicatedStorage").Events.Respawn:FireServer()
wait(1)
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "bo's script Hub |Evade|", HidePremium = false,IntroText = "Evade Version 1.2", SaveConfig = false, ConfigFolder = "OrionTest"})
local GuiService = game:GetService("GuiService")
local Light = game:GetService("Lighting")


--functions and shit

_G.AutoSlide = true

function dofullbright()
    Light.Ambient = Color3.new(1, 1, 1)
    Light.ColorShift_Bottom = Color3.new(1, 1, 1)
    Light.ColorShift_Top = Color3.new(1, 1, 1)
    game.Lighting.FogEnd = 100000
    game.Lighting.FogStart = 0
    game.Lighting.ClockTime = 14
    game.Lighting.Brightness = 2
    game.Lighting.GlobalShadows = false
    end

function Autoslide()
    while _G.AutoSlide == true do
    game:GetService("ReplicatedStorage").ModuleStorage.WeaponBase.Framework.BaseVM.Slide:Fire()
    local ohString1 = "Crouch"
    local ohBoolean2 = true
    game:GetService("Players").LocalPlayer.PlayerScripts.Events.KeybindUsed:Fire(ohString1, ohBoolean2)
    wait()
    end
end
    

--the tabs and shit

local CharTab= Window:MakeTab({
	Name = "Character",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MiscTab= Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local FunTab= Window:MakeTab({
	Name = "Fun",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

FunTab:AddToggle({
	Name = "AutoSlide (press c for onces after turning on)",
	Default = false,
	Callback = function(Value)
        _G.AutoSlide = Value
		Autoslide()
	end    
})

local TargetWalkspeed
CharTab:AddSlider({
	Name = "Speed",
	Min = 0,
	Max = 100,
	Default = 0,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	Callback = function(Value)
		TargetWalkspeed = Value
	end   
})

CharTab:AddSlider({
    Name = "Hip height",
    Min = -1.50,
    Max = 100,
    Default = -1.50,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    Callback = function(HipValue)
        game.Players.LocalPlayer.Character.Humanoid.HipHeight = HipValue
    end    
})

MiscTab:AddButton({
	Name = "Inf Jump",
	Callback = function()
        local InfiniteJumpEnabled = true
        game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
  	end    
})

MiscTab:AddButton({
	Name = "Q to Teleport",
	Callback = function()
        plr = game.Players.LocalPlayer 
        hum = plr.Character.HumanoidRootPart 
        mouse = plr:GetMouse()
        mouse.KeyDown:connect(function(key)
            if key == "q" then
            if mouse.Target then
                hum.CFrame = CFrame.new(mouse.Hit.x, mouse.Hit.y + 5, mouse.Hit.z)
                end
                end
                end)
  	end    
})

MiscTab:AddButton({
	Name = "Full Bright",
	Callback = function()
        dofullbright()
  	end    
})

MiscTab:AddButton({
	Name = "Return Too Main Menu",
	Callback = function()
        game:GetService("ReplicatedStorage").Events.ReturnToMenu:FireServer()
  	end    
})

MiscTab:AddButton({
	Name = "Low Quality",
	Callback = function()
        local ohString1 = "LowQuality"
        local ohBoolean2 = true
        game:GetService("ReplicatedStorage").Events.UpdateSetting:FireServer(ohString1, ohBoolean2)
  	end    
})

MiscTab:AddBind({
	Name = "Random Vote",
	Default = Enum.KeyCode.E,
	Hold = false,
	Callback = function()
        local RandomVote = math.random(3)
		local ohNumber1 = (RandomVote)
        game:GetService("ReplicatedStorage").Events.Vote:FireServer(ohNumber1)
	end    
})

game:GetService("RunService").RenderStepped:Connect(function()
    pcall(function()
        if game.Players.LocalPlayer.Character.Humanoid.MoveDirection.Magnitude > 0 then
            game.Players.LocalPlayer.Character:TranslateBy(game.Players.LocalPlayer.Character.Humanoid.MoveDirection * TargetWalkspeed/100)
        end
    end)
end)

OrionLib:Init()