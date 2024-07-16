local C = require 'juicy.colors'
local O = require('juicy.config').options

local groups = {

    NoiceLspProgressTitle = { fg = C.yellow.base, bg = C.bg, bold = true },
    NoiceLspProgressClient = { fg = C.gray.dull3, bg = C.bg },
    NoiceLspProgressSpinner = { fg = C.cyan.bright, bg = C.bg },

    NoiceFormatProgressDone = { bg = C.green.bright, fg = C.black.dark },
    NoiceFormatProgressTodo = { bg = C.gray.dull3, fg = C.black.dark },

    NoiceCmdline = { bg = C.bg_dark, fg = C.fg },
    NoiceCmdlineIcon = { bg = C.bg_float, fg = C.yellow.base },
    NoiceCmdlineIconSearch = { bg = C.bg_dark, fg = C.yellow.base },

    NoicePopupBorder = { fg = C.black.dark, bg = C.black.normal },
    NoiceCmdlinePopupBorder = { link = 'NoicePopupBorder' },
    NoiceCmdlinePopupBorderSearch = { link = 'NoicePopupBorder' },
    NoiceCmdlinePopup = { bg = C.black.dark },
}

if O.noice.style == 'classic' then
    groups.NoiceCmdline = { bg = C.bg, fg = C.cyan.base }
    groups.NoiceCmdlinePopup = { bg = C.bg }
    groups.NoicePopupBorder = { bg = C.bg, fg = C.cyan.base }
    groups.NoiceCmdlineIcon = { bg = C.bg, fg = C.yellow.bright }
end

return groups
