fx_version 'adamant'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'

game 'rdr3'
author 'x0Z3ro0x'
lua54 'yes'

client_scripts {
	'client/main.lua'
}

server_scripts {
	'server/main.lua'
}

shared_scripts {
	'config.lua'
}

ui_page 'ui/index.html'

files {
	'ui/index.html',
	'ui/index.css',
	'ui/js/listener.js',
	'ui/fonts/CHINESER.TTF'
}