-- RE-DEVELOP - this script is for our car pack for optimalization the speed/Handling (basic gta5 carhud)

function text(content) 
    SetTextFont(7)
    SetTextProportional(0)
    SetTextScale(1.5,1.5)
    SetTextEntry("STRING")
    AddTextComponentString(content)
    DrawText(0.46,0.86)
end

Citizen.CreateThread(function()

    while true do
        Citizen.Wait(1)
        local speed = (GetEntitySpeed(GetVehiclePedIsIn(GetPlayerPed(-1), false))*3.6)
        if IsPedInAnyVehicle(GetPlayerPed(-1), false) then
            text(math.floor(speed) .. " km/h") -- Concatenate " km/h" to the speed value
        end
    end
end)