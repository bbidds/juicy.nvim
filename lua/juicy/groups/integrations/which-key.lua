local C = require 'juicy.colors'

return {

    WhichKey = { fg = C.yellow.base },
    WhichKeyFloat = { bg = C.bg_float },
    WhichKeyDesc = { fg = C.fg },
    WhichKeyGroup = { link = "Function", bold = true },
    WhichKeyBorder = { fg = C.fg_popup_border, bg = C.none },

    -- TODO: Unsure.
    WhichKeySeperator = {},
    WhichKeyValue = {},
}
