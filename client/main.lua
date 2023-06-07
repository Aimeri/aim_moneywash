local QBCore = exports['qb-core']:GetCoreObject()

local function LoadAnimationDict(dict)
    RequestAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict(dict)
        Wait(1)
    end
end

local function WashMoney()
    local hasItem = QBCore.Functions.HasItem('dirtymoney', 10)
    if hasItem then
        QBCore.Functions.Progressbar('money_washing', "Washing Money", 5000, false, true, {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        }, {
            animDict = 'amb@prop_human_bbq@male@idle_a',
            anim = 'idle_b',
            flags = 16,
        }, {}, {}, function()
            TriggerServerEvent('aim:moneywashing')
            ClearPedTasks(PlayerPedId())
            Wait(1000) -- Delay to prevent rapid triggering
            WashMoney() -- Repeat the money washing process
        end, function()
            ClearPedTasks(PlayerPedId())
            QBCore.Functions.Notify("Cancelled", "error", 5000)
        end)
    else
        ClearPedTasks(PlayerPedId())
        QBCore.Functions.Notify("You have washed all your Dirty Money!", "success", 5000)
    end
end

RegisterNetEvent('aim:startmoneywashing')
AddEventHandler('aim:startmoneywashing', function()
    WashMoney() -- Start the money washing process
end)