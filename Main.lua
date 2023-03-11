local CoreGui = game:GetService("StarterGui")

local GameTable = {
    [9498006165] = "https://raw.githubusercontent.com/Robobo2022/script/main/TappingSimulator.lua",
    [8884334497] = "https://raw.githubusercontent.com/Robobo2022/script/main/MiningClickerSimulator.lua",
    [10108131074] = "https://raw.githubusercontent.com/Robobo2022/script/main/MowTheLawn.lua",
    [183364845] = "https://raw.githubusercontent.com/Robobo2022/script/main/SpeedRun4.lua",
    [5293755937] = "https://raw.githubusercontent.com/Robobo2022/script/main/SpeedRunSimulator.lua",
    [7047488135] = "https://raw.githubusercontent.com/Robobo2022/script/main/SpeedrunSimulator2.lua",
    [10379662529] = "https://raw.githubusercontent.com/Robobo2022/script/main/VictoryJump.lua",
    [9170761016] = "https://raw.githubusercontent.com/Robobo2022/script/main/MagicClicker.lua",
    [10106105124] = "https://raw.githubusercontent.com/Robobo2022/script/main/WheatFarmingSimulator.lua",
    [9872472334] = "https://raw.githubusercontent.com/Robobo2022/script/main/Bloxfruits.lua",
    [10662542523] = "https://raw.githubusercontent.com/Robobo2022/script/main/Bloxfruits.lua",
    [10324347967] = "https://raw.githubusercontent.com/Robobo2022/script/main/Bloxfruits.lua",
    [10530697691] = "https://raw.githubusercontent.com/Robobo2022/script/main/Bloxfruits.lua",
    [10530697691] = "https://raw.githubusercontent.com/Robobo2022/script/main/Bloxfruits.lua",
    [10324346056] = "https://raw.githubusercontent.com/Robobo2022/script/main/Bloxfruits.lua",
    [10808838353] = "https://raw.githubusercontent.com/Robobo2022/script/main/Bloxfruits.lua",
    [8888615802] = "https://raw.githubusercontent.com/spookysss/RainbowFriends/main/script%20(2).lua",
    [10118559731] = "https://raw.githubusercontent.com/Robobo2022/script/main/nico'snextbot.lua",
    [10243982775] = "https://raw.githubusercontent.com/Robobo2022/script/main/Redbox2.lua",
    [155615604] = "https://raw.githubusercontent.com/Robobo2022/script/main/prison%20life.lua",
    [4991214437] = "https://raw.githubusercontent.com/Robobo2022/script/main/town.lua",
    [5023820864] = "https://raw.githubusercontent.com/Robobo2022/script/main/trade%20tower.lua",
    [11353532384] = "https://raw.githubusercontent.com/Robobo2022/script/main/Bloxfruits.lua",
    [11353528705] = "https://raw.githubusercontent.com/Robobo2022/script/main/Bloxfruits.lua",
    [11346342371] = "https://raw.githubusercontent.com/spookysss/MakingMemesInYourBasement/main/script.lua",
    [9585800888] = "https://raw.githubusercontent.com/Robobo2022/script/main/PlaneCashPhysics.lua",
    [11195100561] = "https://raw.githubusercontent.com/Robobo2022/script/main/runningfromintentnet.lua",
    [11330149751] = "https://raw.githubusercontent.com/Robobo2022/script/main/scam.lua",
    [2248408710] = "https://raw.githubusercontent.com/Robobo2022/script/main/Destruction.lua",
    [2768379856] = "https://raw.githubusercontent.com/Robobo2022/script/main/3008.lua",
    [3857052864] = "https://raw.githubusercontent.com/Robobo2022/script/main/RakeFanMade.lua",
    [21532277] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [709461761] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [1213821265] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [1231303427] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [1234408990] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [1242009557] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [1257393236] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [1269513822] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [1419274802] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [1448835396] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [1470780246] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [1549086835] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [2083817401] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [2088934656] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [2511620169] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [2591382751] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [2840013718] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [3107097964] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [5431100846] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [5431104427] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [5891659534] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [10605039538] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [6537140247] = "https://raw.githubusercontent.com/Robobo2022/script/main/%20Notoriety.lua",
    [2317712696] = "https://raw.githubusercontent.com/Robobo2022/script/main/thewildwest.lua",
}



if GameTable[game.PlaceId] == nil then
    CoreGui:SetCore("SendNotification", {
        Title = "Game not supported :(";
        Text = "Copying discord to clipboard... Please check the game support channel for more information.";
        Duration = 3;
    })
    
    task.delay(2, function()
            CoreGui:SetCore("SendNotification", {
            Title = "Loading";
            Text = "Game was not supported so its now loading Hydra Network Universal.";
            Duration = 3;
        })
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/Robobo2022/script/main/Universal.lua"), true))()
    end)
else
    loadstring(game:HttpGet(GameTable[game.PlaceId]))()
end


for _,v in next, getconnections(game:GetService("ScriptContext").Error) do
    v:Disable()
end

for _,v in next, getconnections(game:GetService("LogService").MessageOut) do
    v:Disable()
end

local Time = os.clock()
local ownerId = game.CreatorId
local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Robobo2022/notify-lib/main/lib'),true))()
if getgenv().Loaded then    
    Lib.prompt('Hydra Network v4', 'Hydra Network v4 has already been executed', 2)
    return
end

getgenv().Loaded = true
game.Players.PlayerAdded:Connect(function(player)
    if player.UserId == ownerId then
        Lib.prompt('Hydra Network v4', 'Owned Joined the game', 2)
    end
end)

local games = ({
    [8908228901] = "sharkbite2.lua",
    [9872472334] = "EVADE.lua",
    [10662542523] = "EVADE.lua",
    [10324347967] = "EVADE.lua",
    [10530697691] = "EVADE.lua",
    [10530697691] = "EVADE.lua",
    [10324346056] = "EVADE.lua",
    [10808838353] = "EVADE.lua",
})[game.PlaceId]

if games then
    Lib.prompt('Game is supported, and is now executing ' .. games, 2)
    print("Time taken: " .. os.clock() - Time)
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Robobo2022/script/tree/main/Games/" .. games))()
else
    Lib.prompt('Hydra Network v4', 'Game is not supported, and is now executing universal', 2)
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Robobo2022/script/main/Games/Universal.lua", true))();
end 