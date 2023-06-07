# aim_moneywash
Convert dirtymoney as an item to cash.  This will take 10 dirty money and convert it to 5 clean cash at a time.  It will also continuously loop through until the player runs out of dirty money.

By default this will display that Dirty Money has been removed, but will not display a popup that Cash has been added, except in the upper-right corner of your screen.  This was confusing people so I added an item called "Clean Money".  It's not used besides in the pop-up.  If you wish to do the same, just add the following item to your resources/[qb]/qb-core/shared/items.lua:

	["cleanmoney"]                   = {["name"] = "cleanmoney",                    ["label"] = "Clean Money",              ["weight"] = 0,         ["type"] = "item",      ["image"] = "cleanmoney.png",           ["unique"] = false,		["useable"] = true,     ["shouldClose"] = false,   ["combinable"] = nil,   ["description"] = "Nice clean money!"},

Then go into aim_moneywash/server/main.lua and uncomment line 10:<br />
        --TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items['cleanmoney'], "add")
        
Then add the image inside of aim_moneywash/images to your resources/[qb]/qb-inventory/html/images folder.
