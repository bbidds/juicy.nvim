local C = require 'juicy.colors'

return {

    CmpItemAbbrDeprecated = { fg = C.gray.dull3 },
    CmpItemAbbrMatch = { fg = C.blue.base, bold = true },
    CmpItemAbbrMatchFuzzy = { link = 'CmpItemAbbrMatch' },

    CmpItemKindField = { link = '@field' },
    CmpItemKindProperty = { link = '@proprty' },
    CmpItemKindEvent = { link = 'Type' },

    CmpItemKindText = { fg = C.gray.dull3 },
    CmpItemKindEnum = { link = 'Type' },
    CmpItemKindKeyword = { link = 'Keyword' },

    CmpItemKindConstant = { link = 'Constant' },
    CmpItemKindConstructor = { link = 'Function' },
    CmpItemKindReference = { fg = C.cyan.base },

    CmpItemKindFunction = { link = 'Function' },
    CmpItemKindStruct = { link = 'Type' },
    CmpItemKindClass = { link = 'Type' },
    CmpItemKindModule = { fg = C.yellow.dim },
    CmpItemKindOperator = { link = 'Operator' },

    CmpItemKindVariable = { fg = C.cyan.base },
    CmpItemKindFile = { fg = C.magenta.bright },

    CmpItemKindUnit = { link = 'Constant' },
    CmpItemKindSnippet = { fg = C.yellow.base },
    CmpItemKindFolder = { fg = C.yellow.enchanted },

    CmpItemKindMethod = { link = 'Function' },
    CmpItemKindValue = { link = 'Constant' },
    CmpItemKindEnumMember = { link = 'Type' },

    CmpItemKindInterface = { link = 'Type' },
    CmpItemKindColor = { link = 'Constant' },
    CmpItemKindTypeParameter = { link = 'Type' },

    CmpItemKindTabNine = { fg = C.red.base },
    CmpItemKindCopilot = { fg = C.red.base },
}
