local C = require 'juicy.colors'

return {
    SagaBorder = { bg = C.black.normal, fg = C.fg_float_border },
    SagaNormal = { bg = C.black.normal },

    HoverBorder = { link = 'FloatBorder' },
    HoverNormal = { link = 'NormalFloat' },

    RenameNormal = { bg = C.bg_float, fg = C.yellow.bright },
    RenameBorder = { link = 'FloatBorder' },

    DiagnosticPos = { fg = C.fg },
    DiagnosticWord = { fg = C.fg },
    DiagnosticSource = { fg = C.gray.dull3 },
    DiagnosticNormal = { link = 'NormalFloat' },
    DiagnosticShowNormal = { link = 'NormalFloat' },
    DiagnosticShowBorder = { link = 'FloatBorder' },
    DiagnosticBorder = { link = 'FloatBorder' },
}
