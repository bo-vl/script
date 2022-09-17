local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local GameTable = {
    [9498006165] = "https://raw.githubusercontent.com/Robobo2022/script/main/TappingSimulator.lua",
    [8884334497] = "https://raw.githubusercontent.com/Robobo2022/script/main/MiningClickerSimulator.lua",
    [10108131074] = "https://raw.githubusercontent.com/Robobo2022/script/main/MowTheLawn.lua",
    [183364845] = "https://raw.githubusercontent.com/Robobo2022/script/main/SpeedRun4.lua",
    [5293755937] = "https://raw.githubusercontent.com/Robobo2022/script/main/SpeedRunSimulator.lua",
    [7047488135] = "https://raw.githubusercontent.com/Robobo2022/script/main/SpeedrunSimulator2.lua",
    [10379662529] = "https://raw.githubusercontent.com/Robobo2022/script/main/VictoryJump.lua";
    [9170761016] = "https://raw.githubusercontent.com/Robobo2022/script/main/MagicClicker.lua";
    [10106105124] = "https://raw.githubusercontent.com/Robobo2022/script/main/WheatFarmingSimulator.lua";
    [9872472334] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua";
    [10662542523] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua";
    [10324347967] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua";
    [10530697691] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua";
    [10530697691] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua";
    [10324346056] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua";
    [8888615802] = "https://raw.githubusercontent.com/spookysss/RainbowFriends/main/script%20(2).lua";
    [10118559731] = "https://raw.githubusercontent.com/Robobo2022/script/main/nico'snextbot.lua";
}

if GameTable[game.PlaceId] == nil then
    OrionLib:MakeNotification({
        Name = "Game not supported :(",
        Content = "Copying discord to clipboard... Please check the game support channel for more information.",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
    
    task.delay(2, function()
        setclipboard("https://discord.gg/k9a4zym5uG")
        OrionLib:MakeNotification({
            Name = "Loading",
            Content = "Game was not supported so its now loading Hydra Network Universal.",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
    end)
    wait(5)
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Robobo2022/script/main/Universal.lua"), true))()
end