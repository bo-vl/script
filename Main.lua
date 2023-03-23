for _,v in next, getconnections(game:GetService("ScriptContext").Error) do
    v:Disable()
end

for _,v in next, getconnections(game:GetService("LogService").MessageOut) do
    v:Disable()
end

local Time = os.clock()
local ownerId = game.CreatorId
local Lib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/Robobo2022/notify-lib/main/lib'),true))()

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
    Lib.prompt('Game is supported, and is now executing', "" .. games, 2)
    print("Time taken: " .. os.clock() - Time)
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Robobo2022/script/main/Games/" .. games))()
else
    Lib.prompt('Hydra Network v4', 'Game is not supported, and is now executing universal', 2)
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Robobo2022/script/Games/Universal.lua", true))();
end 