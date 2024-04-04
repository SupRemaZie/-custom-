RegisterCommand('car',function (source, args)

    local vehicleName = args[1] or 'adder'
    local playerId = source
    local playerPed = PlayerPedId()
    local pos       = GetEntityCoords(playerPed)
    local heading   = GetEntityHeading(playerPed)

    if not IsModelInCdimage(vehicleName) or not IsModelAVehicle(vehicleName) then
        TriggerEvent('chat:open')
        TriggerEvent('chat:addMessage', {
            color= {255,0,0},
            args = {'Seems that ' .. vehicleName .. ' is not a valid vehicle'}

           
        })
        
        return
    end

    RequestModel(vehicleName)

    while not HasModelLoaded(vehicleName) do
        Wait(10)
    end

    local createdVehicle = CreateVehicle(vehicleName, pos.x, pos.y, pos.z, heading)
    SetPedIntoVehicle(playerPed,createdVehicle, -1)

    SetModelAsNoLongerNeeded(vehicleName)
end)
local playerPed = PlayerPedId()
local playerVeh = GetVehiclePedIsIn(playerPed, false)
Citizen.CreateThread(function()
    TriggerEvent('chat:addMessage', {
        color= {255,0,0},
        args = {'Appuyez E pour demander ouvrir le menu.'}
    })
    local var = true

    while true do
        SendNUIMessage({
            hello = "world",
            action = "showMessage"
        })
    end

    
end)


