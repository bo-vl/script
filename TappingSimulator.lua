local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "bo's script Hub|Tapping Simulator!|", HidePremium = false, IntroText = "Bo's Script Hub", SaveConfig = false, ConfigFolder = "OrionTest"})

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

end