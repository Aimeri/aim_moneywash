local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent("aim:moneywashing")
AddEventHandler("aim:moneywashing", function()
	local src = source
    local Player = QBCore.Functions.GetPlayer(src)
    if Player.Functions.RemoveItem('dirtymoney', 10) then
        Player.Functions.AddMoney("cash", 5, "Cleaning Money")
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['dirtymoney'], "remove")
        --TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cleanmoney'], "add")
    end
end)