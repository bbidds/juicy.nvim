-- Notes and format from @folke/tokyonight.nvim.

local C = require 'juicy.colors'

return {
    -- LSP Semantic Token Groups
    -- Types follow the pattern @lsp.type.<type>.<filetype>
    -- These groups are for the Neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.

    --- Misc
    ['@comment'] = { link = 'Comment' },
    ['@comment.documentation'] = { link = 'Comment' },
    ['@operator'] = { link = 'Operator' }, -- For any operator: `+`, but also `->` and `*` in C.

    --- Punctuation
    ['@punctuation.delimiter'] = { link = '@operator' }, -- For delimiters ie: `.`
    ['@punctuation.bracket'] = { fg = C.gray.hl2 },      -- For brackets and parens.
    ['@punctuation.special'] = { link = '@operator' },   -- For special punctuation that does not fall in the categories before.
    ['@punctuation.special.markdown'] = { fg = C.orange.base, bold = true },

    --- Literals
    ['@string.documentation'] = { link = 'String' },
    ['@string.regex'] = { fg = C.magenta.bright },  -- For regexes.
    ['@string.escape'] = { fg = C.magenta.bright }, -- For escape characters within a string.

    --- Functions
    ['@function'] = { fg = C.green.bright },       -- General function names.
    ['@method'] = { fg = C.cyan.dim },             -- Method names.
    ['@constructor'] = { fg = C.cyan.dim },       -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    ['@parameter'] = { fg = C.fg, italic = true }, -- For parameters of a function.
    ['@parameter.builtin'] = { link = 'Builtin' }, -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]

    --- Keywords
    ['@keyword'] = { fg = C.yellow.bright },          -- For keywords that don't fall in previous categories.
    ['@keyword.coroutine'] = { fg = C.orange.base, bold = true },  -- For keywords related to coroutines.
    ['@keyword.function'] = { fg = C.green.base }, -- For keywords used to define a function.
    ['@label'] = { link = 'Keyword' },            -- For labels: `label:` in C and `:label:` in Lua.

    --- Types
    ['@type.builtin'] = { link = 'Type' },
    ['@type'] = { fg = C.red.base },                  -- General types.
    ['@field'] = { fg = C.cyan.bright }, -- For fields.
    ['@property'] = { link = 'Keyword' },

    --- Identifiers
    ['@variable'] = { link = 'Variable' },        -- Any variable name that does not have another highlight.
    ['@variable.builtin'] = { link = 'Builtin' }, -- Variable names that are defined by the languages, like `this` or `self`.

    --- Text
    ['@text.literal.markdown_inline'] = { bg = C.black.normal, fg = C.fg },
    ['@text.reference'] = { link = 'Link' },
    ['@text.todo.unchecked'] = { fg = C.blue.b1 },    -- For unchecked todo items.
    ['@text.todo.checked'] = { fg = C.green.bright }, -- For checked todo items.
    ['@text.warning'] = { fg = C.warning, bold = true },  -- Warnings with bold text.
    ['@text.danger'] = { fg = C.error, underline = true }, -- Danger text with underline.
    ['@text.diff.add'] = { link = 'DiffAdd' },
    ['@text.diff.delete'] = { link = 'DiffDelete' },

    -- TSX
    ['@tag.tsx'] = { fg = C.blue.base },
    ['@constructor.tsx'] = { fg = C.green.dim },
    ['@tag.delimiter.tsx'] = { fg = C.red.base },

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
    ['@lsp.type.variable'] = { link = 'Variable' }, -- use treesitter styles for regular variables
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

    -- Things that seem to be missing?
    ['@text.todo'] = { link = 'Todo' },
    ['@text.note'] = { link = 'Note' },
    ['@string.special'] = { fg = C.yellow.base }, -- For special strings.
    ['@tag'] = { fg = C.blue.b1 },                -- Tags like HTML tag names.
    ['@tag.delimiter'] = { fg = C.fg },           -- Tag delimiter like `<` `>` `/`
    ['@tag.attribute'] = { fg = C.yellow.base },  -- Tag attribute like `id` `class`
    ['@text'] = { link = 'Normal' },              -- For strings considered text in a markup language.
    ['@text.strong'] = { bold = true },
    ['@text.emphasis'] = { italic = true },       -- For text to be represented with emphasis.
    ['@text.underline'] = { underline = true },   -- For text to be represented with an underline.
    ['@text.strike'] = { strikethrough = true },  -- For strikethrough text.
    ['@text.title'] = { link = 'Title' },         -- Text that is part of a title.
    ['@text.uri'] = { underline = true },         -- Any URI like a link or email.
    ['@text.literal'] = { link = 'String' },
    ['@constant'] = { link = 'Constant' },
    ['@number'] = { fg = C.blue.base },            -- Numbers with a distinct color.
    ['@float'] = { fg = C.red.bright },           -- Floats with a distinct color.
    ['@boolean'] = { link = 'Constant' },
    ['@constant.macro'] = { link = 'Constant' },
    ['@constant.builtin'] = { link = 'Constant' },
    ['@keyword.return'] = { link = 'Keyword' },
    ['@keyword.export'] = { link = 'Keyword' },
    ['@repeat'] = { link = 'Keyword' },
    ['@conditional'] = { link = 'Keyword' },
    ['@class'] = { link = 'Keyword' },
    ['@keyword.this'] = { link = 'Keyword' },
    ['@function.builtin'] = { link = 'Function' },
    ['@function.macro'] = { link = 'Macro' },
    ['@method.call'] = { link = 'Function' },
    ['@method.function'] = { link = 'Function' },
    ['@parameter'] = { link = 'Variable' },
    ['@method.constructor'] = { link = 'Function' },
    ['@parameter.builtin'] = { link = 'Variable' },
    ['@field'] = { link = 'Identifier' },          -- Link field names to identifiers.

    -- Additional TSX for React
    ['@jsx.element'] = { fg = C.red.base },
    ['@jsx.attribute'] = { fg = C.blue.base },
    ['@jsx.value'] = { fg = C.green.base },

    -- CSS
    ['@property'] = { fg = C.yellow.base },        -- For CSS property names.
    ['@property.name'] = { fg = C.yellow.base },    -- For property names in CSS.

    -- Markdown
    ['@text.list.unchecked'] = { fg = C.blue.b1 },
    ['@text.list.checked'] = { fg = C.green.bright },
    ['@text.bold'] = { bold = true },
    ['@text.italic'] = { italic = true },
    ['@text.underline'] = { underline = true },
    ['@text.strike'] = { strikethrough = true },
    ['@text.markdown.code'] = { fg = C.orange.base },
    ['@text.math'] = { fg = C.yellow.base },

    -- Help and Documentation
    ['@text.documentation'] = { fg = C.green.base },
    ['@text.note'] = { fg = C.blue.base },
    ['@text.warning'] = { fg = C.red.base },
    ['@text.danger'] = { fg = C.red.bright, bold = true },
    ['@text.todo.unchecked'] = { fg = C.blue.b1 },
    ['@text.todo.checked'] = { fg = C.green.bright },
    ['@text.todo.done'] = { fg = C.gray.hl2, strikethrough = true },
}
