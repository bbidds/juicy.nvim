local C = require 'juicy.colors'

local juicy = {}

juicy.normal = {
	a = { bg = C.orange.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

juicy.insert = {
	a = { bg = C.green.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

juicy.command = {
	a = { bg = C.cyan.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

juicy.visual = {
	a = { bg = C.red.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

juicy.replace = {
	a = { bg = C.magenta.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

juicy.terminal = {
	a = { bg = C.blue.base, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

juicy.inactive = {
	a = { bg = C.bg_inactive, fg = C.black.dark, gui = 'bold' },
	b = { bg = C.bg, fg = C.black.lightest },
	c = { bg = C.bg_statusline, fg = C.black.lightest },
}

return juicy
