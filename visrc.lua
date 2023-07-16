
require('vis')
require('vis-sneak')
require('tmux-repl')

-- require('vis-parkour')
local pk = require('vis-parkour')
pk.auto_square_brackets = true
pk.autoselect = true
pk.emacs = false

vis.events.subscribe(vis.events.INIT, function()
	vis:command('langmap "neio;: srRkK" "hjkloO:dsSnN"')
	vis:command("set theme solarized")
	vis:command("map insert E (")
	vis:command("map insert I )")
	vis:command("map insert N {")
	vis:command("map insert O }")
end)

vis.events.subscribe(vis.events.WIN_OPEN, function(win)
	vis:command("set ai on")
	vis:command("set ic on")
	vis:command("set et off")
	vis:command("set cul on")
	vis:command("set cc 80")
	vis:command("set layout v")
	vis:command("set show-spaces on")
	vis:command("set show-tabs on")
	vis:command("set show-eof on")
	vis:command("set number on")
	vis:command("set tabwidth 2")
end)

