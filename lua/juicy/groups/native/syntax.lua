-- Notes and format from @folke/tokyonight.nvim.

local C = require 'juicy.colors'
local O = require('juicy.config').options

return {
    Constant = { fg = C.blue.base },         -- (preferred) any constant
    Number = { fg = C.red.bright },          --   a number constant: 234, 0xff
    Boolean = { fg = C.teal.bright },         --  a boolean constant: TRUE, false
    Float = { fg = C.cyan.base },             --    a floating point constant: 2.3e10
    None = { fg = C.none, bg = C.none },
    String = { fg = C.yellow.bright },        --   a string constant: "this is a string"
    Character = { fg = C.orange.base },       --  a character constant: 'c', '\n'
    Variable = { fg = C.purple.bright },      -- Changed to enhance differentiation
    Namespace = { fg = C.green.base },
    Field = { fg = C.gray.gyn1 },

    Title = { fg = C.red.subtle },            -- Changed from yellow to red for better contrast

    Builtin = { fg = C.gray.hl0 },

    Identifier = { fg = C.orange.bright },    -- (preferred) any variable name
    Function = { fg = C.cyan.bright },        -- Changed from blue to cyan for better contrast

    Keyword = { fg = C.teal.base, bold = O.bold_keywords }, -- Changed to teal for better differentiation
    Statement = { link = 'Keyword' },          -- (preferred) any statement
    Conditional = { link = 'Keyword' },        --  if, then, else, endif, switch, etc.
    Repeat = { link = 'Keyword' },             --   for, do, while, etc.
    Label = { link = 'Keyword' },              --    case, default, etc.
    Operator = { fg = C.blue.bright },         -- "sizeof", "+", "*", etc.

    Macro = { fg = C.orange.base },            -- same as Define
    Exception = { link = 'Macro' },            --  try, catch, throw
    PreProc = { fg = C.purple.base },          -- (preferred) generic preprocessor
    Include = { fg = C.teal.bright },          -- Changed to teal for better contrast
    Define = { fg = C.red.base },              --   preprocessor #define
    PreCondit = { link = 'Macro' },            --  preprocessor #if, #else, #endif, etc.

    Comment = { fg = C.gray.g2, italic = O.italic_comments },

    Type = { fg = C.orange.base },             -- Changed from yellow to orange for better differentiation
    StorageClass = { link = 'Keyword' },       -- static, register, volatile, etc.
    Structure = { fg = C.green.bright },       --  struct, union, enum, etc.
    Typedef = { fg = C.teal.bright },          --  A typedef

    Special = { fg = C.gray.hl0 },             -- (preferred) any special symbol

    Class = { fg = C.cyan.base },              -- class names
    Property = { fg = C.red.base },            -- object and class properties
    Enum = { fg = C.yellow.bright },           -- enumerations
    Interface = { fg = C.orange.base },        -- interfaces
    Annotation = { fg = C.teal.base },         -- annotations in Java or Python
    FunctionCall = { fg = C.blue.base },       -- function calls
    Method = { fg = C.green.base },            -- methods
    ConstantColor = { fg = C.red.bright },     -- constants with colors
    SpecialChar = { fg = C.yellow.base },      -- special characters in strings

    VariableScope = { fg = C.purple.bright },  -- scope variables
    Parameter = { fg = C.green.bright },       -- function parameters

    -- Ignore, below, may be invisible...
    Ignore = { fg = C.gray.g0 },               -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = C.red.bright },             -- (preferred) any erroneous construct
    Todo = { fg = C.blue.b1, bold = true },    -- Changed to blue for better differentiation
    Note = { fg = C.white, bg = C.gray.hl0 },

    -- What are these?
    qfLineNr = { fg = C.orange.base },
    qfFileName = { fg = C.teal.bright },

    htmlH1 = { fg = C.green.base, bold = true },         -- Changed from yellow to green
    htmlH2 = { fg = C.purple.base },

    Link = { fg = C.red.base, underline = true },
    CodeBlock = { bg = C.cyan.base, fg = C.white },

    mkdHeading = { link = 'htmlH1' },
    mkdCode = { link = 'CodeBlock' },
    mkdCodeDelimiter = { link = 'CodeBlock' },
    mkdCodeStart = { fg = C.blue.bright, bold = true },
    mkdCodeEnd = { fg = C.blue.bright, bold = true },
    mkdLink = { link = 'Link' },

    markdownHeadingDelimiter = { link = 'mkdHeading' },
    markdownCode = { link = 'CodeBlock' },
    markdownCodeBlock = { link = 'CodeBlock' },
    markdownH1 = { link = 'htmlH1' },
    markdownH2 = { link = 'htmlH2' },
    markdownLinkText = { link = 'Link' },

    ['@punctuation.special.markdown'] = { fg = C.cyan.bright, bold = true },  -- Changed to cyan
    ['@text.todo.unchecked'] = { fg = C.red.base },  -- For brackets and parens.
    ['@text.todo.checked'] = { fg = C.green.bright }, -- For brackets and parens.
    ['@text.literal.markdown_inline'] = { bg = C.teal.base, fg = C.red.b1 },
    ['@text.literal.markdown'] = { link = 'Normal' },
    ['helpCommand'] = { bg = C.black.dark, fg = C.yellow.base },

    debugPC = { bg = C.gray.hl0 },         -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = C.red.bright }, -- used for breakpoint colors in terminal-debug
}
