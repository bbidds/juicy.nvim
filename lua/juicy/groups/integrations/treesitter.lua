-- Refined Tree-sitter configuration for Juicy Colors

local C = require 'juicy.colors'

return {
    -- Miscellaneous
    ['@comment'] = { link = 'Comment' },
    ['@comment.documentation'] = { link = 'Comment' },
    ['@operator'] = { link = 'Operator' }, -- Operators: `+`, `->`, `*`

    -- Punctuation
    ['@punctuation.delimiter'] = { link = '@operator' }, -- Delimiters: `.` etc.
    ['@punctuation.bracket'] = { fg = C.gray.hl2 },      -- Brackets and parentheses.
    ['@punctuation.special'] = { link = '@operator' },   -- Special punctuation.
    ['@punctuation.special.markdown'] = { fg = C.orange.base, bold = true },

    -- Literals
    ['@string.documentation'] = { link = 'String' },
    ['@string.regex'] = { fg = C.magenta.bright },  -- Regex patterns.
    ['@string.escape'] = { fg = C.magenta.bright }, -- Escape characters in strings.

    -- Functions and Parameters
    ['@constructor'] = { fg = C.gray.gyn1 },       -- Constructor calls/definitions.
    ['@parameter'] = { fg = C.fg, italic = true }, -- Function parameters.
    ['@parameter.builtin'] = { link = 'Builtin' }, -- Built-in function parameters.

    -- Keywords
    ['@keyword'] = { link = 'Keyword' },          -- General keywords.
    ['@keyword.coroutine'] = { link = 'Macro' },  -- Coroutine-related keywords.
    ['@keyword.function'] = { link = 'Keyword' }, -- Function definition keywords.
    ['@label'] = { link = 'Keyword' },            -- Labels: `label:` in C, `:label:` in Lua.

    -- Types
    ['@type.builtin'] = { link = 'Type' },
    ['@field'] = { link = 'Field' }, -- Fields.
    ['@property'] = { link = 'Keyword' },

    -- Identifiers
    ['@variable'] = { link = 'Variable' },        -- General variable names.
    ['@variable.builtin'] = { link = 'Builtin' }, -- Language-defined variables.

    -- Text Elements
    ['@text.literal.markdown_inline'] = { bg = C.black.normal, fg = C.fg },
    ['@text.reference'] = { link = 'Link' },
    ['@text.todo.unchecked'] = { fg = C.blue.b1 },
    ['@text.todo.checked'] = { fg = C.green.bright },
    ['@text.warning'] = { fg = C.warning },
    ['@text.danger'] = { fg = C.error },
    ['@text.diff.add'] = { link = 'DiffAdd' },
    ['@text.diff.delete'] = { link = 'DiffDelete' },

    -- TSX Tags
    ['@tag.tsx'] = { fg = C.blue.base },
    ['@constructor.tsx'] = { fg = C.blue.base },
    ['@tag.delimiter.tsx'] = { fg = C.blue.base },

    -- LSP Semantic Token Groups
    ['@lsp.type.boolean'] = { link = 'Boolean' },
    ['@lsp.type.builtinType'] = { link = 'Type' },
    ['@lsp.type.comment'] = { link = 'Comment' },
    ['@lsp.type.enum'] = { link = 'Type' },
    ['@lsp.type.enumMember'] = { link = 'Field' },
    ['@lsp.type.escapeSequence'] = { link = '@string.escape' },
    ['@lsp.type.formatSpecifier'] = { link = '@punctuation.special' },
    ['@lsp.type.interface'] = { link = 'Keyword' },
    ['@lsp.type.keyword'] = { link = 'Keyword' },
    ['@lsp.type.namespace'] = { link = 'Namespace' },
    ['@lsp.type.number'] = { link = 'Number' },
    ['@lsp.type.operator'] = { link = '@operator' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    ['@lsp.type.property'] = { link = '@property' },
    ['@lsp.type.selfKeyword'] = { link = 'Builtin' },
    ['@lsp.type.string.rust'] = { link = 'String' },
    ['@lsp.type.typeAlias'] = { link = 'Type' },
    ['@lsp.type.unresolvedReference'] = {},
    ['@lsp.type.variable'] = { link = 'Variable' },
    ['@lsp.typemod.class.defaultLibrary'] = { link = 'Type' },
    ['@lsp.typemod.enum.defaultLibrary'] = { link = 'Type' },
    ['@lsp.typemod.enumMember.defaultLibrary'] = { link = 'Constant' },
    ['@lsp.typemod.function.defaultLibrary'] = { link = 'Function' },
    ['@lsp.typemod.keyword.async'] = { link = 'Macro' },
    ['@lsp.typemod.macro.defaultLibrary'] = { link = 'Macro' },
    ['@lsp.typemod.method.defaultLibrary'] = { link = 'Function' },
    ['@lsp.typemod.operator.injected'] = { link = 'Operator' },
    ['@lsp.typemod.string.injected'] = { link = 'String' },
    ['@lsp.typemod.type.defaultLibrary'] = { link = 'Type' },
    ['@lsp.typemod.variable.defaultLibrary'] = { link = 'Variable' },
    ['@lsp.typemod.variable.injected'] = { link = 'Variable' },
    ['@lsp.typemod.variable.globalScope'] = { link = 'Macro' },

    -- Miscellaneous
    ['@text.todo'] = { link = 'Todo' },
    ['@text.note'] = { link = 'Note' },
    ['@string.special'] = { fg = C.yellow.base }, -- Special escape characters.
    ['@tag'] = { fg = C.blue.b1 },                -- HTML/XML tag names.
    ['@tag.delimiter'] = { fg = C.fg },           -- Tag delimiters: `<`, `>`, `/`.
    ['@tag.attribute'] = { fg = C.yellow.base },  -- Tag attributes: `id`, `class`.
    ['@text'] = { link = 'Normal' },              -- Text in markup languages.
    ['@text.strong'] = { bold = true },
    ['@text.emphasis'] = { italic = true },       -- Emphasized text.
    ['@text.underline'] = { underline = true },   -- Underlined text.
    ['@text.strike'] = { strikethrough = true },  -- Strikethrough text.
    ['@text.title'] = { link = 'Title' },         -- Title text.
    ['@text.uri'] = { underline = true },         -- URIs.
    ['@text.literal'] = { link = 'String' },
    ['@constant'] = { link = 'Constant' },
    ['@number'] = { link = 'Constant' },
    ['@float'] = { link = 'Constant' },
    ['@boolean'] = { link = 'Constant' },
    ['@constant.macro'] = { link = 'Constant' },
    ['@constant.builtin'] = { link = 'Constant' },
    ['@keyword.return'] = { link = 'Keyword' },
    ['@keyword.export'] = { link = 'Keyword' },
    ['@repeat'] = { link = 'Keyword' },
    ['@conditional'] = { link = 'Keyword' },
    ['@class'] = { link = 'Keyword' },
    ['@keyword.operator'] = { link = 'Keyword' },
    ['@include'] = { fg = C.magenta.base },
    ['@macro'] = { link = 'Macro' },
    ['@preproc'] = { link = 'Macro' },
    ['@attribute'] = { link = 'Macro' },
    ['@function.macro'] = { link = 'Macro' },
    ['@define'] = { link = 'Macro' },
    ['@exception'] = { link = 'Macro' },
    ['@function'] = { link = 'Function' },
    ['@method'] = { link = 'Function' },
    ['@method.call'] = { link = 'Function' },
    ['@function.call'] = { link = 'Function' },
    ['@function.builtin'] = { link = 'Function' },
    ['@property.cpp'] = { fg = C.cyan.base },
    ['@namespace'] = { fg = C.yellow.dim },
    ['@type'] = { link = 'Type' },
    ['@type.definition'] = { link = 'Type' },
    ['@type.qualifier'] = { link = 'Keyword' },
    ['@storageclass'] = { link = 'Keyword' },
    ['@none'] = { link = 'None' },
}
