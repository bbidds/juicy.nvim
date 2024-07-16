local C = require 'juicy.colors'
local O = require('juicy.config').options

local bg
local fg
if O.ts_context.dark_background then
    bg = C.black.dark
    fg = C.gray.dull0
else
    bg = C.gray.dull2
    fg = C.gray.gyn0
end

return {
    TreesitterContext = { bg = bg },
    TreesitterContextLineNumber = { fg = fg, bg = bg },
}
