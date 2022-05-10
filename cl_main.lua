RegisterNetEvent('sound:play')
AddEventHandler('sound:play', function(Sound, Volume)
    SendNUIMessage({
        soundType = 'play',
        soundFile = Sound,
        soundVolume = Volume
    })
end)

RegisterNetEvent('sound:playDistance')
AddEventHandler('sound:playDistance', function(playerNetId, maxDist, Sound, Volume)
    local Pos = GetEntityCoords(PlayerPedId())
    local Pos2 = GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(playerNetId)))
    local dist = Vdist(Pos.x, Pos.y, Pos.z, Pos2.z, Pos2.y, Pos3.z)
    if (dist <= maxDist) then
        SendNUIMessage({
            soundType = 'play',
            soundFile = Sound,
            soundVolume = Volume
        })
    end
end)