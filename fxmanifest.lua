fx_version 'cerulean'
game { 'gta5' }

lua54 'yes'
description 'qb-methcar by Samuel, Edited by Griefa'
version '1.0.0'

shared_scripts {
    '@ox_lib/init.lua',
    'config.lua'
}

client_script "client.lua"
server_script "server.lua"
