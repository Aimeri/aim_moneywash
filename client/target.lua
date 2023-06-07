local QBCore = exports['qb-core']:GetCoreObject()

exports['qb-target']:AddBoxZone("washMoney", WashMoney.targetZone, 5.0, 1.4, {
	name="washMoney",
	heading = WashMoney.heading,
	debugPoly = false,
	minZ = WashMoney.minZ,
	maxZ = WashMoney.maxZ,
	}, {
		options = {
			{
				event = "aim:startmoneywashing",
                icon = Config.TargetIcon,
				label = "Wash Money",
			},
		},
	   distance = 1.5
})