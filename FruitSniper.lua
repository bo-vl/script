--the code might not be the best way to do it but it works

repeat wait() until game:IsLoaded()
local module = loadstring(game:HttpGet"https://raw.githubusercontent.com/LeoKholYt/roblox/main/lk_serverhop.lua")()
local Util = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robobo2022/Util/main/Load.lua"))()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetTeam", "Pirates")
wait(1)

local lplr = game:GetService("Players").LocalPlayer
local duration = 2
local FruitName
local FruitFound = false
local FruitStored = false

local Fruits = {
    "Spin Fruit",
    "Chop Fruit",
    "Spring Fruit",
    "Bomb Fruit",
    "Smoke Fruit",
    "Spike Fruit",
    "Flame Fruit",
    "Falcon Fruit",
    "Ice Fruit",
    "Sand Fruit",
    "Dark Fruit",
    "Revive Fruit",
    "Diamond Fruit",
    "Light Fruit",
    "Rubber Fruit",
    "Barrier Fruit",
    "Magma Fruit",
    "Quake Fruit",
    "Buddha Fruit",
    "Love Fruit",
    "Spider Fruit",
    "Pheonix Fruit",
    "Portal Fruit",
    "Rumble Fruit",
    "Paw Fruit",
    "Blizzard Fruit",
    "Gravity Fruit",
    "Dough Fruit",
    "Shadow Fruit",
    "Venom Fruit",
    "Control Fruit",
    "Spirit Fruit",
    "Dragon Fruit",
    "Leopard Fruit",
}

local StoreNames = {
    ["Spin Fruit"] = "Spin-Spin",
    ["Chop Fruit"] = "Chop-Chop",
    ["Spring Fruit"] = "Spring-Spring",
    ["Bomb Fruit"] = "Bomb-Bomb",
    ["Smoke Fruit"] = "Smoke-Smoke",
    ["Spike Fruit"] = "Spike-Spike",
    ["Flame Fruit"] = "Flame-Flame",
    ["Falcon Fruit"] = "Falcon-Falcon",
    ["Ice Fruit"] = "Ice-Ice",
    ["Sand Fruit"] = "Sand-Sand",
    ["Dark Fruit"] = "Dark-Dark",
    ["Revive Fruit"] = "Revive-Revive",
    ["Diamond Fruit"] = "Diamond-Diamond",
    ["Light Fruit"] = "Light-Light",
    ["Rubber Fruit"] = "Rubber-Rubber",
    ["Barrier Fruit"] = "Barrier-Barrier",
    ["Magma Fruit"] = "Magma-Magma",
    ["Quake Fruit"] = "Quake-Quake",
    ["Buddha Fruit"] = "Buddha-Buddha",
    ["Love Fruit"] = "Love-Love",
    ["Spider Fruit"] = "Spider-Spider",
    ["Phoenix Fruit"] = "Phoenix-Phoenix",
    ["Portal Fruit"] = "Portal-Portal",
    ["Rumble Fruit"] = "Rumble-Rumble",
    ["Paw Fruit"] = "Paw-Paw",
    ["Blizzard Fruit"] = "Blizzard-Blizzard",
    ["Gravity Fruit"] = "Gravity-Gravity",
    ["Dough Fruit"] = "Dough-Dough",
    ["Shadow Fruit"] = "Shadow-Shadow",
    ["Venom Fruit"] = "Venom-Venom",
    ["Control Fruit"] = "Control-Control",
    ["Spirit Fruit"] = "Spirit-Spirit",
    ["Dragon Fruit"] = "Dragon-Dragon",
    ["Leopard Fruit"] = "Leopard-Leopard",
}

--Credits to LeoKholYt for the server hop function
local function hopServer()
    wait(4)
    module:Teleport(game.PlaceId)
end

local function NotFound(FruitFound)
    if not FruitFound then
        print("Fruit not found. Hopping servers.")
        hopServer()
    end
end

local function Store()
    wait(1)
    local storeName = StoreNames[FruitName]
    local args2 = storeName
    local args3 = workspace.Characters[lplr.Name][FruitName]
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", args2, args3)
    FruitStored = true
end

local function findfruit()
    for _,v in pairs(Fruits) do
        if game:GetService("Workspace"):FindFirstChild(v) then
            print("Fruit Found: " .. v)
            local endPosition = game:GetService("Workspace")[v].Handle.CFrame
            FruitName = v
            Util.CTween:go(lplr, endPosition, duration)
            return true
        end
    end
    print("Function called. FruitFound = " .. tostring(FruitFound))
    return false
end

if findfruit() == true then
    wait(duration + 1)
    Store()
    wait(1)
    Store() --safety measure
    if FruitStored == true then
        hopServer()
    end
else
    NotFound(FruitFound)
end


findfruit()

if wait(25) then
    hopServer()
end