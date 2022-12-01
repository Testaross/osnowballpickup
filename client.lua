RegisterKeyMapping('SnowballPickup', 'Pick up snowball', 'keyboard', 'e')

RegisterCommand('SnowballPickup', function()
    RequestAnimDict('anim@mp_snowball')
    local snowBall = joaat('WEAPON_SNOWBALL')
    if IsNextWeatherType('XMAS') then
        local ped = PlayerPedId()-- 
        TaskPlayAnim(ped, 'anim@mp_snowball', 'pickup_snowball', 8.0, -1, -1, 0, 1, 0, 0, 0) -- 
        Wait(1000)
        GiveWeaponToPed(ped, snowBall, 2, false, true) 
    else
        print('Not enough snow')
    end
end)
