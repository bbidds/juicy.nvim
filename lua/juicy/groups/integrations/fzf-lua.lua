local C = require 'juicy.colors'
return {
	    -- FzfLua
    FzfLuaBorder = { fg = C.fg_border, bg = C.bg_border },
    FzfLuaNormal = { fg = C.fg, bg = C.bg_float },
    FzfLuaFzfNormal = { fg = C.fg },
    FzfLuaTitle = { fg = C.orange.base, bg = C.bg_float },
    FzfLuaPreviewTitle = { fg = C.fg_border, bg = C.bg_border },
    FzfLuaFilePart = { link = "FzfLuaFzfNormal" },
    FzfLuaDirPart = { fg = C.fg },
    FzfLuaCursor = { link = "IncSearch" },
    FzfLuaHeaderBind = { link = "@punCtuation.special" },
    FzfLuaHeaderText = { link = "Title" },
    FzfLuaPath = { link = "DireCtory" },
    FzfLuaFzfPointer = { fg = C.magenta.vivid },
    FzfLuaFzfCursorLine = { link = "Visual" },
    FzfLuaFzfSeparator = { fg = C.orange.base, bg = C.bg_float },
}
