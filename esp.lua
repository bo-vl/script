local players = game.Players:GetPlayers()

local function esp(v)
    repeat wait() until v.Character.Humanoid
    local esp = Instance.new("Highlight")
    esp.Name = v.Name
    esp.FillTransparency = 0.75
    esp.FillColor = Color3.new(255, 0, 0)
    esp.OutlineColor = Color3.new(0,0,0)
    esp.OutlineTransparency = 0
    esp.Parent = v.Character
end

for i,v in pairs(players) do
    esp(v)
    v.CharacterAdded:Connect(function()
        esp(v)
    end)
end

game.Players.PlayerAdded:Connect(function(v)
    v.CharacterAdded:Connect(function()
        esp(v)
    end)
end)