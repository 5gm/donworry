local Supported = {

    [7580655576] = "https://raw.githubusercontent.com/5gm/scripts/main/Pet%20Crystal%20simulatorui2.lua",
    [7463504342] = "https://raw.githubusercontent.com/5gm/scripts/refs/heads/main/Pet%20Incrementalui2.lua",
    [7114126212] = "https://raw.githubusercontent.com/5gm/scripts/refs/heads/main/Freekick%20simulator.lua",

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
