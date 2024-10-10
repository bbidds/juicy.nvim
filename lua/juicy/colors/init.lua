local U = require 'juicy.utils'
local O = require('juicy.config').options
local C = require 'juicy.colors.juicy'
local diff_blend = 0.2

local function Juicy(style)
    -- Backgrounds
    C.bg = C.black.medium
    C.bg_dark = C.black.darkest
    C.bg_inactive = C.black.darker
    C.bg_highlight = C.gray.g1
    C.bg_visual = C.white.medium
    C.bg_bright = C.gray.hl3
    C.bg_sidebar = C.bg
    C.bg_statusline = C.bg_dark
    C.bg_selected = C.white.medium
    C.bg_fold = C.gray.dull2

    -- Foregrounds
    C.fg = C.white.medium
    C.fg_dark = C.black.light
    C.fg_inactive = C.black.darker
    C.fg_hightlight = C.white.light
    C.fg_bright = C.gray.hl2
    C.fg_visual = C.black.normal
    C.fg_sidebar = C.bg_highlight
    C.fg_statusline = C.fg_dark
    C.fg_selected = C.fg_bright
    C.fg_fold = C.fg

    -- Popups
    C.bg_popup = C.black.darker
    C.fg_popup = C.gray.dull3
    C.bg_popup_border = C.bg_popup
    C.fg_popup_border = C.fg_popup

    -- Floating windows
    C.bg_float = (O.transparent.float and C.none) or ((O.swap_backgrounds and C.gray.g1) or C.black.darker)
    C.fg_float = C.fg_dark
    C.bg_float_border = C.bg_float
    C.fg_float_border = C.black.darkest

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
end

local function Nord(style)
    -- Swap background
    if O.swap_backgrounds then
        C.gray.dull0 = C.black.dark
        C.black.dark = C.gray.dull0
    end

    -- Backgrounds
    C.bg = C.gray.g0
    C.bg_dark = C.gray.gd0
    C.bg_inactive = C.bg_dark
    C.bg_highlight = C.gray.g1
    C.bg_visual = C.gray.g4
    C.bg_sidebar = C.gd1
    C.bg_statusline = C.bg_dark
    C.bg_selected = C.gray.g2
    C.bg_fold = C.gray.g1

    -- Foregrounds
    C.fg = C.gray.gyn0
    C.fg_inactive = C.gray.ligy0
    C.fg_hightlight = C.gray.gyn0
    C.fg_bright = C.gray.hl2
    C.fg_dark = C.gray.g3
    C.fg_sidebar = C.bg_highlight
    C.fg_fold = C.fg
    C.fg_selected = C.fg_bright

    -- Popups
    C.bg_popup = C.black.lighter
    C.fg_popup = C.white.darker
    C.bg_popup_border = C.bg_popup
    C.fg_popup_border = C.fg_popup

    -- Floating windows
    C.bg_float = C.gd1
    C.fg_float = C.fg
    C.bg_float_border = C.bg_float
    C.fg_float_border = C.fg_float


    C.diff = {
        change0 = U.blend(C.white.normal, C.bg, 0.05),
        change1 = U.blend(C.white.dark, C.bg, diff_blend),
        add = U.blend(C.green.contrast, C.bg, diff_blend),
        delete = U.blend(C.red.contrast, C.bg, diff_blend),
    }

    -- Git
    C.git = {
        add = C.green.vivid,
        delete = C.red.vivid,
        change = C.yellow.vivid,
    }

    -- Diagnostics
    C.error = C.red.vivid
    C.warn = C.yellow.vivid
    C.warning = C.warn
    C.hint = C.green.vivid
    C.info = C.blue.vivid
end


function C.extend_palette(style)
    C = O.on_palette(C)
    if C ~= nil then
        C.none = "NONE"


        if O.theme == "Nord" then
            Nord()
        else
            Juicy()
        end
        -- Swap background
        if O.swap_backgrounds then
            C.fg = C.black.dark
            C.bg = C.gray.dull0
        end

        -- Define some use cases.
        -- Some of the format is from @folke/tokyonight.nvim.

        if O.transparent_bg then
            C.bg = C.none
            C.bg_dark = C.none
            C.bg_sidebar = C.none
            C.bg_popup = C.none
            C.bg_statusline = C.none
            C.bg_selected = U.blend(C.gray.dull1, C.black.dark, 0.4)
        end

        -- Cursorline
        if O.cursorline.theme == 'light' then
            C.bg_highlight = U.blend(C.gray.dull2, C.bg, O.cursorline.blend)
            C.bg_visual = C.bg_highlight
        end

        if O.background ~= nil then
            C.bg = O.background
        end

        O.after_pallete(C)
    end
end

-- Sometimes the palette is required before the theme has been loaded,
-- so we need to extend the palette in those cases. if not C.extended then C.extend_palette() end

return C
