-- Notes and format from @folke/tokyonight.nvim.

local C = require 'juicy.colors'
local O = require('juicy.config').options

return {
    Constant = { fg = C.orange.fruity },         -- (preferred) any constant
    Number = { fg = C.yellow.fruity },           --   a number constant: 234, 0xff
    Boolean = { fg = C.green.fruity },           --  a boolean constant: TRUE, false
    Float = { fg = C.red.fruity },               --    a floating point constant: 2.3e10
    None = { fg = C.none, bg = C.none },
    String = { fg = C.pink.fruity },             --   a string constant: "this is a string"
    Character = { fg = C.blue.fruity },          --  a character constant: 'c', '\n'
    Variable = { fg = C.green.bright },           -- Changed to enhance differentiation
    Namespace = { fg = C.gray.hl0 },
    Field = { fg = C.gray.gyn2 },

    Title = { fg = C.teal.fruity },               -- Changed from yellow to teal for better contrast

    Builtin = { fg = C.red.subtle },

    Identifier = { fg = C.gray.gyn1 },                     -- (preferred) any variable name
    Function = { fg = C.orange.fruity },                      -- Changed from blue to orange for better contrast

    Keyword = { fg = C.cyan.fruity, bold = O.bold_keywords }, -- Changed to cyan for better differentiation
    Statement = { link = 'Keyword' },                       -- (preferred) any statement
    Conditional = { link = 'Keyword' },                     --  if, then, else, endif, switch, etc.
    Repeat = { link = 'Keyword' },                          --   for, do, while, etc.
    Label = { link = 'Keyword' },                           --    case, default, etc.
    Operator = { fg = C.orange.fruity },                    -- "sizeof", "+", "*", etc.

    Macro = { fg = C.green.fruity },                          -- same as Define
    Exception = { link = 'Macro' },                         --  try, catch, throw
    PreProc = { fg = C.red.subtle },                        -- (preferred) generic preprocessor
    Include = { fg = C.blue.fruity },                       -- Changed to blue for better contrast
    Define = { fg = C.teal.fruity },                        --   preprocessor #define
    PreCondit = { link = 'Macro' },                         --  preprocessor #if, #else, #endif, etc.

    Comment = { fg = C.gray.g1, italic = O.italic_comments },

    Type = { fg = C.yellow.fruity },       -- Changed from yellow to light yellow for better differentiation
    StorageClass = { link = 'Keyword' }, -- static, register, volatile, etc.
    Structure = { fg = C.cyan.fruity },  --  struct, union, enum, etc.
    Typedef = { fg = C.orange.fruity },     --  A typedef

    Special = { fg = C.red.fruity },        -- (preferred) any special symbol

    Class = { fg = C.teal.fruity },                -- class names
    Property = { fg = C.blue.fruity },               -- object and class properties
    Enum = { fg = C.yellow.fruity },                     -- enumerations
    Interface = { fg = C.green.fruity },            -- interfaces
    Annotation = { fg = C.orange.fruity },            -- annotations in Java or Python
    FunctionCall = { fg = C.cyan.fruity },          -- function calls
    Method = { fg = C.green.fruity },                -- methods
    ConstantColor = { fg = C.red.fruity },          -- constants with colors
    SpecialChar = { fg = C.gray.g2 },               -- special characters in strings

    VariableScope = { fg = C.teal.fruity },            -- scope variables
    Parameter = { fg = C.orange.fruity },              -- function parameters

    -- Ignore, below, may be invisible...
    Ignore = { fg = C.gray.g0 },                     -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = C.red.bright },                   -- (preferred) any erroneous construct
    Todo = { fg = C.blue.fruity, bold = true },      -- Changed to blue for better differentiation
    Note = { fg = C.black.bright, bg = C.info },

    -- What are these?
    qfLineNr = { fg = C.gray.gy0 },
    qfFileName = { fg = C.blue.fruity },

    htmlH1 = { fg = C.teal.fruity, bold = true },          -- Changed from yellow to teal
    htmlH2 = { fg = C.orange.fruity },

    Link = { fg = C.blue.fruity, underline = true },
    CodeBlock = { bg = C.orange.fruity, fg = C.fg },

    mkdHeading = { link = 'htmlH1' },
    mkdCode = { link = 'CodeBlock' },
    mkdCodeDelimiter = { link = 'CodeBlock' },
    mkdCodeStart = { fg = C.cyan.fruity, bold = true },
    mkdCodeEnd = { fg = C.cyan.fruity, bold = true },
    mkdLink = { link = 'Link' },

    markdownHeadingDelimiter = { link = 'mkdHeading' },
    markdownCode = { link = 'CodeBlock' },
    markdownCodeBlock = { link = 'CodeBlock' },
    markdownH1 = { link = 'htmlH1' },
    markdownH2 = { link = 'htmlH2' },
    markdownLinkText = { link = 'Link' },

    ['@punctuation.special.markdown'] = { fg = C.teal.fruity, bold = true },  -- Changed to teal
    ['@text.todo.unchecked'] = { fg = C.blue.fruity },  -- For brackets and parens.
    ['@text.todo.checked'] = { fg = C.green.fruity }, -- For brackets and parens.
    ['@text.literal.markdown_inline'] = { bg = C.cyan.fruity, fg = C.blue.fruity },
    ['@text.literal.markdown'] = { link = 'Normal' },
    ['helpCommand'] = { bg = C.black.dark, fg = C.blue.fruity },

    debugPC = { bg = C.bg_sidebar },         -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = C.red.fruity }, -- used for breakpoint colors in terminal-debug
}
