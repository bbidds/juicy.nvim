local C = require 'juicy.colors'

return {

    WhichKey = { fg = C.yellow.base },
    WhichKeyFloat = { bg = C.bg_float },
    WhichKeyDesc = { fg = C.fg },
    WhichKeyGroup = { link = "Function", bold = true },
    WhichKeyBorder = { fg = C.fg_popup_border, bg = C.none },

    -- TODO: Unsure.
    WhichKeySeperator = {},
    WhichKeyValue = { fg = C.blue.base, bold = true},
    whichKeyIcon = {},
    whichKeyIconAzure = { fg = C.fruits.f16},
    whichKeyIconBlue = { fg = C.fruits.f5},
    whichKeyIconCyan = { fg = C.fruits.f14},
    whichKeyIconGreen = { fg = C.fruits.f6},
    whichKeyIconGrey = { fg = C.fruits.f8},
    whichKeyIconOrange = { fg = C.fruits.f12},
    whichKeyIconPurple = { fg = C.fruits.f3},
    whichKeyIconRed = { fg = C.fruits.f9},
    whichKeyIconYellow = { fg = C.fruits.f10},
}
