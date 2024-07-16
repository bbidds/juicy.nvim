local C = require 'juicy.colors'

return {

    TroubleNormal = { bg = C.bg },
    TroubleText = { fg = C.fg },

    TroubleCount = { fg = C.white.light, bg = C.gray.dull2 },
    TroubleIndent = { fg = C.gray.dull2 },

    TroubleFile = { fg = C.cyan.bright },
    TroubleFoldIcon = { fg = C.gray.dull0 },
}
