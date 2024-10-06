-- Notes and format from @folke/tokyonight.nvim.

local C = require 'juicy.colors'
local O = require('juicy.config').options

return {
    Constant = { fg = C.orange.base },         -- (preferred) any constant
    Number = { fg = C.cyan.base },             --   a number constant: 234, 0xff
    Boolean = { fg = C.green.bright },          --  a boolean constant: TRUE, false
    Float = { fg = C.magenta.bright },          --    a floating point constant: 2.3e10
    None = { fg = C.none, bg = C.none },
    String = { fg = C.gray.gyn1 },             --   a string constant: "this is a string"
    Character = { fg = C.green.base },          --  a character constant: 'c', '\n'
    Variable = { fg = C.magenta.bright },       -- Changed to enhance differentiation
    Namespace = { fg = C.gray.hl0 },
    Field = { fg = C.gray.gyn2 },

    Title = { fg = C.blue.bright },             -- Changed from yellow to blue for better contrast

    Builtin = { fg = C.red.subtle },

    Identifier = { fg = C.gray.gyn1 },                     -- (preferred) any variable name
    Function = { fg = C.teal.bright },                       -- Changed from blue to teal for better contrast

    Keyword = { fg = C.purple.base, bold = O.bold_keywords }, -- Changed to purple for better differentiation
    Statement = { link = 'Keyword' },                       -- (preferred) any statement
    Conditional = { link = 'Keyword' },                     --  if, then, else, endif, switch, etc.
    Repeat = { link = 'Keyword' },                          --   for, do, while, etc.
    Label = { link = 'Keyword' },                           --    case, default, etc.
    Operator = { fg = C.orange.base },                      -- "sizeof", "+", "*", etc.

    Macro = { fg = C.green.base },                          -- same as Define
    Exception = { link = 'Macro' },                         --  try, catch, throw
    PreProc = { fg = C.red.subtle },                        -- (preferred) generic preprocessor
    Include = { fg = C.teal.bright },                       -- Changed to teal for better contrast
    Define = { fg = C.blue.base },                          --   preprocessor #define
    PreCondit = { link = 'Macro' },                         --  preprocessor #if, #else, #endif, etc.

    Comment = { fg = C.gray.g1, italic = O.italic_comments },

    Type = { fg = C.green.light },       -- Changed from yellow to light green for better differentiation
    StorageClass = { link = 'Keyword' }, -- static, register, volatile, etc.
    Structure = { fg = C.blue.bright },  --  struct, union, enum, etc.
    Typedef = { fg = C.magenta.bright },  --  A typedef

    Special = { fg = C.red.base },        -- (preferred) any special symbol

    Class = { fg = C.purple.bright },                -- class names
    Property = { fg = C.orange.base },               -- object and class properties
    Enum = { fg = C.teal.base },                     -- enumerations
    Interface = { fg = C.yellow.bright },            -- interfaces
    Annotation = { fg = C.magenta.base },            -- annotations in Java or Python
    FunctionCall = { fg = C.cyan.bright },          -- function calls
    Method = { fg = C.green.bright },                -- methods
    ConstantColor = { fg = C.red.subtle },          -- constants with colors
    SpecialChar = { fg = C.gray.g2 },               -- special characters in strings

    VariableScope = { fg = C.blue.base },            -- scope variables
    Parameter = { fg = C.pink.bright },              -- function parameters

    -- Ignore, below, may be invisible...
    Ignore = { fg = C.gray.g0 },                     -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = C.red.bright },                   -- (preferred) any erroneous construct
    Todo = { fg = C.magenta.base, bold = true },      -- Changed to magenta for better differentiation
    Note = { fg = C.black.light, bg = C.info },

    -- What are these?
    qfLineNr = { fg = C.gray.gy0 },
    qfFileName = { fg = C.blue.base },

    htmlH1 = { fg = C.teal.base, bold = true },          -- Changed from yellow to teal
    htmlH2 = { fg = C.orange.base },

    Link = { fg = C.blue.b1, underline = true },
    CodeBlock = { bg = C.orange.base, fg = C.fg },

    mkdHeading = { link = 'htmlH1' },
    mkdCode = { link = 'CodeBlock' },
    mkdCodeDelimiter = { link = 'CodeBlock' },
    mkdCodeStart = { fg = C.cyan.base, bold = true },
    mkdCodeEnd = { fg = C.cyan.base, bold = true },
    mkdLink = { link = 'Link' },

    markdownHeadingDelimiter = { link = 'mkdHeading' },
    markdownCode = { link = 'CodeBlock' },
    markdownCodeBlock = { link = 'CodeBlock' },
    markdownH1 = { link = 'htmlH1' },
    markdownH2 = { link = 'htmlH2' },
    markdownLinkText = { link = 'Link' },

    ['@punctuation.special.markdown'] = { fg = C.teal.bright, bold = true },  -- Changed to teal
    ['@text.todo.unchecked'] = { fg = C.blue.b1 },  -- For brackets and parens.
    ['@text.todo.checked'] = { fg = C.green.base }, -- For brackets and parens.
    ['@text.literal.markdown_inline'] = { bg = C.cyan.base, fg = C.blue.b1 },
    ['@text.literal.markdown'] = { link = 'Normal' },
    ['helpCommand'] = { bg = C.black.dark, fg = C.blue.b1 },

    debugPC = { bg = C.bg_sidebar },         -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = C.red.bright }, -- used for breakpoint colors in terminal-debug
}
