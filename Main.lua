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
    [9872472334] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua",
    [10662542523] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua",
    [10324347967] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua",
    [10530697691] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua",
    [10530697691] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua",
    [10324346056] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua",
    [10808838353] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua",
    [8888615802] = "https://raw.githubusercontent.com/spookysss/RainbowFriends/main/script%20(2).lua",
    [10118559731] = "https://raw.githubusercontent.com/Robobo2022/script/main/nico'snextbot.lua",
    [10243982775] = "https://raw.githubusercontent.com/Robobo2022/script/main/Redbox2.lua",
    [155615604] = "https://raw.githubusercontent.com/Robobo2022/script/main/prison%20life.lua",
    [4991214437] = "https://raw.githubusercontent.com/Robobo2022/script/main/town.lua",
    [5023820864] = "https://raw.githubusercontent.com/Robobo2022/script/main/trade%20tower.lua",
    [11353532384] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua",
    [11353528705] = "https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua",
}




if GameTable[game.PlaceId] == nil then
    CoreGui:SetCore("SendNotification", {
        Title = "Game not supported :(";
        Text = "Copying discord to clipboard... Please check the game support channel for more information.";
        Duration = 3;
    })
    
    task.delay(2, function()
        setclipboard("https://discord.gg/k9a4zym5uG")
            CoreGui:SetCore("SendNotification", {
            Title = "Loading";
            Text = "Game was not supported so its now loading Hydra Network Universal.";
            Duration = 3;
        })
        loadstring(game:HttpGet(("https://raw.githubusercontent.com/Robobo2022/script/main/Universal.lua"), true))()
    end)
else
    CoreGui:SetCore("SendNotification", {
        Title = "Discord";
        Text = "We would appreciate if you joined our discord (Copied)";
        Duration = 10;
    })
    setclipboard("https://discord.gg/k9a4zym5uG")
    loadstring(game:HttpGet(GameTable[game.PlaceId]))()
end