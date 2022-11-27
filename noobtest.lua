local HWID = game:GetService("RbxAnalyticsService"):GetClientId();
local WhitelistedHWIDs = {"6b3062c5-7287-4c5b-80d5-50694afae8f9" ,"4F69CA78-86D0-4721-8F2A-256ACBBBD7C4" ,"0C89E70A-A834-4E9D-9119-A81DCD9076DD"}
local qNVAKkuwxNpqruLjSRHg = false

function CheckHWID(hwidval)
for _,whitelisted in pairs(WhitelistedHWIDs) do
 if hwidval == whitelisted then
     return true
 elseif hwidval ~= whitelisted then
    return false
       end
    end
end

qNVAKkuwxNpqruLjSRHg = CheckHWID(HWID)

if qNVAKkuwxNpqruLjSRHg == true then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Robobo2022/script/main/JumpSimulator.lua"), true))()
end

if qNVAKkuwxNpqruLjSRHg == false then
    loadstring(game:HttpGet(("https://raw.githubusercontent.com/Robobo2022/script/main/EVADE.lua"), true))()
end
