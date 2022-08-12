local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "bo's script Hub |Mow The Lawn!|", HidePremium = false, IntroText = "Bo's Script Hub", SaveConfig = false, ConfigFolder = "OrionTest"})

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

end