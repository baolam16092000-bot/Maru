pcall(function()
    local url

    if game.PlaceId == 107778070777162 then
        url = "https://raw.githubusercontent.com/baolam16092000-bot/Maru/refs/heads/main/baolamhubmainstealaegg.lua"
    elseif game.GameId == 10200395747 then
     else
        url = "https://raw.githubusercontent.com/baolam16092000-bot/Maru/refs/heads/main/baolamhubmain.lua"
    end

    loadstring(game:HttpGet(url))()
end)