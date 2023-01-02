local player = game:GetService("Players").LocalPlayer
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
    Name = "The Wild West",
    LoadingTitle = "Hydra Network",
    LoadingSubtitle = "by Hydra#8270",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil,
       FileName = "Big Hub"
    },
    Discord = {
       Enabled = false,
       Invite = "sirius",
       RememberJoins = true 
    },
    KeySystem = false,
    KeySettings = {
       Title = "Sirius Hub",
       Subtitle = "Key System",
       Note = "Join the discord (discord.gg/sirius)",
       FileName = "SiriusKey",
       SaveKey = true,
       GrabKeyFromSite = false,
       Key = "Hello"
    }
 })


local T1 = Window:CreateTab("Player", 4483362458)
local T7 = Window:CreateTab("Gun Mods", 4483362458)
local T2 = Window:CreateTab("World", 12006576859)
local T3 = Window:CreateTab("Misc", 4483362458)
local T4 = Window:CreateTab("Respawn/Teleport", 12006546050)
local T5 = Window:CreateTab("Esp (ore)", 12006560770)
local T6 = Window:CreateTab("Esp (Animal)", 12006560770)

local Slider = T2:CreateSlider({
    Name = "TimeSpeed",
    Range = {1, 100},
    Increment = 1,
    Suffix = "Speed",
    CurrentValue = 1,
    Flag = "Slider1",
    Callback = function(Value)
        game:GetService("ReplicatedStorage").LightingSettings.TimeSpeed.Value = Value
    end,
})

local Toggle = T2:CreateToggle({
    Name = "Blood moon",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        game:GetService("ReplicatedStorage").LightingSettings.IsBloodMoon.Value = Value
    end,
})

local Toggle = T2:CreateToggle({
    Name = "Fog",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        game:GetService("ReplicatedStorage").GlobalWeather.FogEnabled.Value = Value
    end,
})

local Toggle = T2:CreateToggle({
    Name = "Rain",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            game:GetService("ReplicatedStorage").GlobalWeather.RainPercent.Value = 1
        else
            game:GetService("ReplicatedStorage").GlobalWeather.RainPercent.Value = 0
        end
    end,
})

local Toggle = T3:CreateToggle({
    Name = "Show admin panel",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        game:GetService("Players").LocalPlayer.PlayerGui.AdminPanel.Enabled = Value
    end,
})

local Button = T4:CreateButton({
    Name = "Respawn/Teleport at Bronze",
    Callback = function()
        local ohString1 = "Bronze"
        game:GetService("ReplicatedStorage").Communication.Functions.Respawn:InvokeServer(ohString1)
    end,
})

local Button = T4:CreateButton({
    Name = "Respawn/Teleport at Dorado",
    Callback = function()
        local ohString1 = "Dorado"
        game:GetService("ReplicatedStorage").Communication.Functions.Respawn:InvokeServer(ohString1)
    end,
})


local Button = T4:CreateButton({
    Name = "Respawn/Teleport at Tribal",
    Callback = function()
        local ohString1 = "Tribal"
        game:GetService("ReplicatedStorage").Communication.Functions.Respawn:InvokeServer(ohString1)
    end,
})

local Button = T4:CreateButton({
    Name = "Respawn/Teleport at Delores",
    Callback = function()
        local ohString1 = "Delores"
        game:GetService("ReplicatedStorage").Communication.Functions.Respawn:InvokeServer(ohString1)
    end,
})

local Button = T4:CreateButton({
    Name = "Respawn/Teleport at WindmillCamp (+5 bounty)",
    Callback = function()
        local ohString1 = "WindmillCamp"
        game:GetService("ReplicatedStorage").Communication.Functions.Respawn:InvokeServer(ohString1)
    end,
})

local Button = T4:CreateButton({
    Name = "Respawn/Teleport at CanyonCamp (+5 bounty)",
    Callback = function()
        local ohString1 = "CanyonCamp"
        game:GetService("ReplicatedStorage").Communication.Functions.Respawn:InvokeServer(ohString1)
    end,
})


local Keybind = T1:CreateKeybind({
    Name = "Instant-Break Free",
    CurrentKeybind = "Q",
    HoldToInteract = false,
    Flag = "Keybind1",
    Callback = function(Keybind)
        game:GetService("ReplicatedStorage").Communication.Events.AttemptBreakFree:FireServer()
    end,
 })


local Button = T1:CreateButton({
    Name = "Reset",
    Callback = function()
        local ohNumber1 = 100
        game:GetService("ReplicatedStorage").Communication.Events.DamageSelf:FireServer(ohNumber1)
    end,
})

local Button = T1:CreateButton({
    Name = "Inf Zoomdistance",
    Callback = function()
        player.CameraMaxZoomDistance = 9998
        player.CameraMinZoomDistance = 5
    end,
})

local Section = T5:CreateSection("one at the time disable other when using other ore (highlight)")

local Toggle = T5:CreateToggle({
    Name = "Esp Coal (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Coal:GetChildren()) do
                local esp = Instance.new("Highlight")
                esp.Parent = v
                esp.Adornee = v
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Coal:GetChildren()) do
                v.Highlight:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Copper (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Copper:GetChildren()) do
                local esp = Instance.new("Highlight")
                esp.Parent = v
                esp.Adornee = v
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Copper:GetChildren()) do
                v.Highlight:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Gold (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Gold:GetChildren()) do
                local esp = Instance.new("Highlight")
                esp.Parent = v
                esp.Adornee = v
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Gold:GetChildren()) do
                v.Highlight:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Iron (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Iron:GetChildren()) do
                local esp = Instance.new("Highlight")
                esp.Parent = v
                esp.Adornee = v
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Iron:GetChildren()) do
                v.Highlight:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Limestone (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Limestone:GetChildren()) do
                local esp = Instance.new("Highlight")
                esp.Parent = v
                esp.Adornee = v
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Limestone:GetChildren()) do
                v.Highlight:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Silver (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Silver:GetChildren()) do
                local esp = Instance.new("Highlight")
                esp.Parent = v
                esp.Adornee = v
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Silver:GetChildren()) do
                v.Highlight:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Zinc (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Zinc:GetChildren()) do
                local esp = Instance.new("Highlight")
                esp.Parent = v
                esp.Adornee = v
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Zinc:GetChildren()) do
                v.Highlight:Destroy()
            end
        end
    end,
})

local Section = T5:CreateSection("BillboardGui")

local Toggle = T5:CreateToggle({
    Name = "Esp Coal (BillboardGui)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Coal:GetChildren()) do
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1.000
                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.TextSize = 14.000
                TextLabel.Text = "Coal"
                TextLabel.BackgroundTransparency = 1
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Coal:GetChildren()) do
                v.BillboardGui:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Copper (BillboardGui)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Copper:GetChildren()) do
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1.000
                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.TextSize = 14.000
                TextLabel.Text = "Copper"
                TextLabel.BackgroundTransparency = 1
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Copper:GetChildren()) do
                v.BillboardGui:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Gold (BillboardGui)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Gold:GetChildren()) do
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1.000
                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.TextSize = 14.000
                TextLabel.Text = "Gold"
                TextLabel.BackgroundTransparency = 1
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Gold:GetChildren()) do
                v.BillboardGui:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Iron (BillboardGui)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Iron:GetChildren()) do
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1.000
                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.TextSize = 14.000
                TextLabel.Text = "Iron"
                TextLabel.BackgroundTransparency = 1
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Iron:GetChildren()) do
                v.BillboardGui:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Limestone (BillboardGui)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Limestone:GetChildren()) do
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1.000
                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.TextSize = 14.000
                TextLabel.Text = "Limstone"
                TextLabel.BackgroundTransparency = 1
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Limestone:GetChildren()) do
                v.BillboardGui:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Silver (BillboardGui)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Silver:GetChildren()) do
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1.000
                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.TextSize = 14.000
                TextLabel.Text = "Silver"
                TextLabel.BackgroundTransparency = 1
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Silver:GetChildren()) do
                v.BillboardGui:Destroy()
            end
        end
    end,
})

local Toggle = T5:CreateToggle({
    Name = "Esp Zinc (BillboardGui)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Zinc:GetChildren()) do
                local BillboardGui = Instance.new("BillboardGui")
                local TextLabel = Instance.new("TextLabel")
                BillboardGui.Parent = v
                BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                BillboardGui.Active = true
                BillboardGui.AlwaysOnTop = true
                BillboardGui.LightInfluence = 1.000
                BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Parent = BillboardGui
                TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel.Size = UDim2.new(0, 200, 0, 50)
                TextLabel.Font = Enum.Font.SourceSans
                TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                TextLabel.TextSize = 14.000
                TextLabel.Text = "Zinc"
                TextLabel.BackgroundTransparency = 1
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Interactables.Mining.OreDeposits.Zinc:GetChildren()) do
                v.BillboardGui:Destroy()
            end
        end
    end,
})


local Toggle = T7:CreateToggle({
    Name = "Instant Reload",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for i,v in next, getgc(true) do
                if type(v) == "table" and rawget(v, "BaseRecoil") then
                    v.ReloadSpeed = 1000000
                    v.LoadSpeed = 1000
                    v.LoadEndSpeed = 1000
                else
                    v.ReloadSpeed = 1
                    v.LoadSpeed = 1
                    v.LoadEndSpeed = 1
                end
            end
        end
    end,
})

local Toggle = T7:CreateToggle({
    Name = "no recoil",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for i,v in next, getgc(true) do
                if type(v) == "table" and rawget(v, "BaseRecoil") then
                    v.BaseRecoil = 0
                end
            end
        end
    end,
})

local Toggle = T7:CreateToggle({
    Name = "Fire speed",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for i,v in next, getgc(true) do
                if type(v) == "table" and rawget(v, "BaseRecoil") then
                    v.FireSpeed = 100
                end
            end
        end
    end,
})

local Section = T6:CreateSection("one at the time disable other when using other ore (highlight)")

local Toggle = T6:CreateToggle({
    Name = "Esp Bear (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Bear" then
                    local esp = Instance.new("Highlight")
                    esp.Parent = v
                    esp.Adornee = v
                end
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Bear" then
                    v.Highlight:Destroy()
                end
            end
        end
    end,
})

local Toggle = T6:CreateToggle({
    Name = "Esp Bison (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Bison" then
                    local esp = Instance.new("Highlight")
                    esp.Parent = v
                    esp.Adornee = v
                end
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Bison" then
                    v.Highlight:Destroy()
                end
            end
        end
    end,
})

local Toggle = T6:CreateToggle({
    Name = "Esp Deer (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Deer" then
                    local esp = Instance.new("Highlight")
                    esp.Parent = v
                    esp.Adornee = v
                end
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Deer" then
                    v.BillboardGui:Destroy()
                end
            end
        end
    end,
})

local Toggle = T6:CreateToggle({
    Name = "Esp Gator (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Gator" then
                    local esp = Instance.new("Highlight")
                    esp.Parent = v
                    esp.Adornee = v
                end
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Gator" then
                    v.BillboardGui:Destroy()
                end
            end
        end
    end,
})

local Section = T6:CreateSection("BillboardGui")

local Toggle = T6:CreateToggle({
    Name = "Esp Bear (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Bear" then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")
                    BillboardGui.Parent = v
                    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    BillboardGui.Active = true
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1.000
                    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel.Size = UDim2.new(0, 200, 0, 50)
                    TextLabel.Font = Enum.Font.SourceSans
                    TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextLabel.TextSize = 14.000
                    TextLabel.Text = "Bear"
                    TextLabel.BackgroundTransparency = 1
                end
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Bear" then
                    v.BillboardGui:Destroy()
                end
            end
        end
    end,
})

local Toggle = T6:CreateToggle({
    Name = "Esp Bison (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Bison" then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")
                    BillboardGui.Parent = v
                    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    BillboardGui.Active = true
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1.000
                    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel.Size = UDim2.new(0, 200, 0, 50)
                    TextLabel.Font = Enum.Font.SourceSans
                    TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextLabel.TextSize = 14.000
                    TextLabel.Text = "Bison"
                    TextLabel.BackgroundTransparency = 1
                end
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Bison" then
                    v.BillboardGui:Destroy()
                end
            end
        end
    end,
})

local Toggle = T6:CreateToggle({
    Name = "Esp Deer (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Deer" then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")
                    BillboardGui.Parent = v
                    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    BillboardGui.Active = true
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1.000
                    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel.Size = UDim2.new(0, 200, 0, 50)
                    TextLabel.Font = Enum.Font.SourceSans
                    TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextLabel.TextSize = 14.000
                    TextLabel.Text = "Deer"
                    TextLabel.BackgroundTransparency = 1
                end
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Deer" then
                    v.BillboardGui:Destroy()
                end
            end
        end
    end,
})

local Toggle = T6:CreateToggle({
    Name = "Esp Gator (highlight)",
    CurrentValue = false,
    Flag = "Toggle1",
    Callback = function(Value)
        if Value == true then
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Gator" then
                    local BillboardGui = Instance.new("BillboardGui")
                    local TextLabel = Instance.new("TextLabel")
                    BillboardGui.Parent = v
                    BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    BillboardGui.Active = true
                    BillboardGui.AlwaysOnTop = true
                    BillboardGui.LightInfluence = 1.000
                    BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                    TextLabel.Parent = BillboardGui
                    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    TextLabel.Size = UDim2.new(0, 200, 0, 50)
                    TextLabel.Font = Enum.Font.SourceSans
                    TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
                    TextLabel.TextSize = 14.000
                    TextLabel.Text = "Gator"
                    TextLabel.BackgroundTransparency = 1
                end
            end
        else
            for _,v in pairs(game:GetService("Workspace").WORKSPACE_Entities.Animals:GetChildren()) do
                if v.Name == "Gator" then
                    v.BillboardGui:Destroy()
                end
            end
        end
    end,
})