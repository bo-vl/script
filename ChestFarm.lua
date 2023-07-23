repeat
    wait()
until game:IsLoaded()

local Util = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robobo2022/Util/main/Load.lua"))()

local Chests = {"Chest1", "Chest2", "Chest3"}
local MinimumTime = 0.3

local Distance = function()
    local Closest = nil
    local Dist = math.huge
    for _, v in pairs(game.Workspace:GetDescendants()) do
        if table.find(Chests, v.Name) then
            local Mag = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if Mag < Dist then
                Closest = v
                Dist = Mag
            end
        end
    end
    return Closest, Dist
end

local TeleportChest = function()
    local closestChest, distance = Distance()
    if closestChest then
        local Time = math.max(distance * 0.01, MinimumTime)
        Util.CTween:go(game.Players.LocalPlayer, closestChest.CFrame, Time)
    end
end

while wait() do
    TeleportChest()
end
