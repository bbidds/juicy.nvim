local U = require 'juicy.utils'
local O = require('juicy.config').options
local C = require 'juicy.colors.juicy'

C.extended = false

function C.extend_palette(style)
    C.extended = true

    -- Modify the palette before generating colors.
    C = O.on_palette(C)

    local diff_blend = 0.2

    -- Swap background
    if O.swap_backgrounds then
        C.gray.dull0 = C.black.dark
        C.black.dark = C.gray.dull0
    end

    C.none = "NONE"

    -- Define some use cases.
    -- Some of the format is from @folke/tokyonight.nvim.

    -- Backgrounds
    C.bg = C.black.medium
    C.bg_dark = C.black.darkest
    C.bg_inactive = C.black.darker
    C.bg_highlight = C.gray.g1
    C.bg_visual = C.bg_highlight
    C.bg_sidebar = C.bg
    C.bg_statusline = C.bg_dark
    C.bg_selected = C.white.medium
    C.bg_fold = C.gray.dull2

    -- Foregrounds
    C.fg = C.white.medium
    C.fg_inactive = C.white.darker
    C.fg_hightlight = C.white.medium
    C.fg_bright = C.gray.hl2
    C.fg_dark = C.black.darker
    C.fg_sidebar = C.bg_highlight
    C.fg_fold = C.fg
    C.fg_selected = C.fg_bright

    -- Popups
    C.bg_popup = C.black.lighter
    C.fg_popup = C.white.darker
    C.bg_popup_border = C.bg_popup
    C.fg_popup_border = C.fg_popup
    -- Floating windows
    C.bg_float = C.bg
    C.fg_float = C.fg
    C.bg_float_border = C.bg_float
    C.fg_float_border = C.fg_float


    -- Diffs
    C.diff = {
        change0 = U.blend(C.white.normal, C.bg, 0.05),
        change1 = U.blend(C.white.dark, C.bg, diff_blend),
        add = U.blend(C.green.base, C.bg, diff_blend),
        delete = U.blend(C.red.base, C.bg, diff_blend),
    }

    -- Git
    C.git = {
        add = C.green.base,
        delete = C.red.base,
        change = C.yellow.base,
    }

    -- Diagnostics
    C.error = C.red.soft
    C.warn = C.yellow.base
    C.warning = C.warn
    C.hint = C.green.base
    C.info = C.blue.base

    if O.transparent_bg then
        C.bg = C.none
        C.bg_dark = C.none
        C.bg_sidebar = C.none
        C.bg_popup = C.none
        C.bg_statusline = C.none
        C.bg_selected = U.blend(C.gray.dull1, C.black.dark, 0.4)
    end

    if O.theme == "radiance" then
	    C.bg = C.black.darker
	    -- TODO
    end

    -- Cursorline
    if O.cursorline.theme == 'light' then
        C.bg_highlight = U.blend(C.gray.dull2, C.bg, O.cursorline.blend)
        C.bg_visual = C.bg_highlight
    end

    if O.background ~= nil then
	    C.bg = O.background
    end
end

-- Sometimes the palette is required before the theme has been loaded,
-- so we need to extend the palette in those cases. if not C.extended then C.extend_palette() end

return C
