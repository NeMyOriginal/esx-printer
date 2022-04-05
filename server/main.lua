local ESX = exports['es_extended']:getSharedObject()

local ValidExtensions = {
    [".png"] = true,
    [".gif"] = true,
    [".jpg"] = true,
    ["jpeg"] = true
}

local ValidExtensionsText = '.png, .gif, .jpg, .jpeg'

RegisterNetEvent('qb-printer:server:SaveDocument', function(url)
    local xPlayer = ESX.GetPlayerFromId(source)
    local extension = string.sub(url, -4)
    local validexts = ValidExtensions
    if url ~= nil then
        if validexts[extension] then
            local info = {
                url = url
            }
            info.description = 'Printed with <3 '
            exports.ox_inventory:AddItem(source, 'printerdocument', 1, info)
        else
            TriggerClientEvent('okokNotify:Alert', source, "", 'Thats not a valid extension, only '..ValidExtensionsText..' extension links are allowed.', 6000, 'error')
        end
    end
end)