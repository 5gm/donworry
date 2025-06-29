local Supported = {

    [7580655576] = "https://raw.githubusercontent.com/5gm/scripts/main/Pet%20Crystal%20simulatorui2.lua",
    [7463504342] = "https://raw.githubusercontent.com/5gm/scripts/refs/heads/main/Pet%20Incrementalui2.lua",
    [7114126212] = "https://raw.githubusercontent.com/5gm/scripts/refs/heads/main/Freekick%20simulator.lua",
    [7541395924] = "https://raw.githubusercontent.com/5gm/scripts/refs/heads/main/Build%20An%20Island.lua",
    [7679508751] = "https://raw.githubusercontent.com/5gm/scripts/refs/heads/main/Infinite%20Mining%20Incremental.lua",
    [7799183193] = "https://raw.githubusercontent.com/5gm/scripts/refs/heads/main/Steal%20a%20car.lua",
    [7881089396] = "https://raw.githubusercontent.com/5gm/scripts/refs/heads/main/Anime%20Rising.lua",
    [7218065222] = "https://raw.githubusercontent.com/5gm/scripts/refs/heads/main/dig.lua",
    

    -- Add more games below following the same format:
    -- [1234567890] = "https://raw.githubusercontent.com/username/repo/main/script.lua",
}

local ID = game.GameId
local scriptUrl = Supported[ID]

if scriptUrl == nil then
    warn("yoza. -> Game is not supported")
    return
end

loadstring(game:HttpGet(scriptUrl))()
