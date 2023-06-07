fx_version 'cerulean'
games { 'gta5' }

lua54 'yes'

author 'Aimeri#3107'
description 'Convert Dirty Money to Cash.'
version '1.0.0'

client_scripts {
	'client/main.lua',
	'client/target.lua',
	'config.lua',
}

server_scripts {
	'server/main.lua',
}

shared_scripts {
	'@PolyZone/client.lua',
    	'@PolyZone/CircleZone.lua',
	'config.lua',
}