RegisterNetEvent('qb-printer:client:UseDocument', function(url)
    local dokument = url
    SendNUIMessage({
        action = "open",
        url = dokument
    })
    SetNuiFocus(true, false)
end)

RegisterNUICallback('SaveDocument', function(data)
    if data.url then
        TriggerServerEvent('qb-printer:server:SaveDocument', data.url)
    end
end)

RegisterNUICallback('CloseDocument', function()
    SetNuiFocus(false, false)
end)

RegisterNetEvent('useprinter')
AddEventHandler('useprinter', function()
        SendNUIMessage({
            action = "start"
        })
        SetNuiFocus(true, true)
end)