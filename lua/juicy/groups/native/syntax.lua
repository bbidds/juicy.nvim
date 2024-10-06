local C = require 'juicy.colors'
local O = require('juicy.config').options

return {
    Constant = { fg = C.green.base },         -- any constant
    Number = { fg = C.teal.bright },          -- a number constant: 234, 0xff
    Boolean = { fg = C.red.subtle },          -- a boolean constant: TRUE, false
    Float = { fg = C.blue.base },             -- a floating point constant: 2.3e10
    None = { fg = C.none, bg = C.none },
    String = { fg = C.orange.base },          -- a string constant: "this is a string"
    Character = { fg = C.cyan.base },         -- a character constant: 'c', '\n'
    Variable = { fg = C.yellow.base },        -- Changed to enhance differentiation
    Namespace = { fg = C.purple.bright },
    Field = { fg = C.gray.g2 },

    Title = { fg = C.teal.base },              -- Changed from yellow to teal for better contrast

    Builtin = { fg = C.red.bright },

    Identifier = { fg = C.orange.bright },     -- any variable name
    Function = { fg = C.green.bright },        -- Changed from blue to green for better contrast

    Keyword = { fg = C.purple.base, bold = O.bold_keywords }, -- Changed to purple for better differentiation
    Statement = { link = 'Keyword' },                      -- any statement
    Conditional = { link = 'Keyword' },                    -- if, then, else, endif, switch, etc.
    Repeat = { link = 'Keyword' },                         -- for, do, while, etc.
    Label = { link = 'Keyword' },                          -- case, default, etc.
    Operator = { fg = C.orange.bright },                   -- "sizeof", "+", "*", etc.

    Macro = { fg = C.cyan.bright },                        -- same as Define
    Exception = { link = 'Macro' },                        -- try, catch, throw
    PreProc = { fg = C.yellow.base },                      -- generic preprocessor
    Include = { fg = C.teal.bright },                      -- Changed to teal for better contrast
    Define = { fg = C.red.base },                          -- preprocessor #define
    PreCondit = { link = 'Macro' },                        -- preprocessor #if, #else, #endif, etc.

    Comment = { fg = C.gray.g1, italic = O.italic_comments },

    Type = { fg = C.blue.base },                          -- Changed from yellow to light blue for better differentiation
    StorageClass = { link = 'Keyword' },                  -- static, register, volatile, etc.
    Structure = { fg = C.purple.base },                    -- struct, union, enum, etc.
    Typedef = { fg = C.cyan.bright },                      -- A typedef

    Special = { fg = C.red.bright },                       -- any special symbol

    Class = { fg = C.green.bright },                       -- class names
    Property = { fg = C.teal.base },                       -- object and class properties
    Enum = { fg = C.orange.bright },                       -- enumerations
    Interface = { fg = C.yellow.base },                    -- interfaces
    Annotation = { fg = C.purple.bright },                 -- annotations in Java or Python
    FunctionCall = { fg = C.blue.bright },                -- function calls
    Method = { fg = C.cyan.base },                         -- methods
    ConstantColor = { fg = C.red.subtle },                -- constants with colors
    SpecialChar = { fg = C.gray.g2 },                     -- special characters in strings

    VariableScope = { fg = C.orange.bright },             -- scope variables
    Parameter = { fg = C.teal.bright },                   -- function parameters

    -- Ignore, below, may be invisible...
    Ignore = { fg = C.gray.g0 },                          -- left blank, hidden  |hl-Ignore|

    Error = { fg = C.red.bright },                        -- any erroneous construct
    Todo = { fg = C.cyan.bright, bold = true },          -- Changed to cyan for better differentiation
    Note = { fg = C.black.bright, bg = C.yellow.base },

    -- What are these?
    qfLineNr = { fg = C.gray.gy0 },
    qfFileName = { fg = C.teal.base },

    htmlH1 = { fg = C.orange.base, bold = true },       -- Changed from yellow to orange
    htmlH2 = { fg = C.purple.base },

    Link = { fg = C.blue.b1, underline = true },
    CodeBlock = { bg = C.green.base, fg = C.fg },

    mkdHeading = { link = 'htmlH1' },
    mkdCode = { link = 'CodeBlock' },
    mkdCodeDelimiter = { link = 'CodeBlock' },
    mkdCodeStart = { fg = C.orange.bright, bold = true },
    mkdCodeEnd = { fg = C.orange.bright, bold = true },
    mkdLink = { link = 'Link' },

    markdownHeadingDelimiter = { link = 'mkdHeading' },
    markdownCode = { link = 'CodeBlock' },
    markdownCodeBlock = { link = 'CodeBlock' },
    markdownH1 = { link = 'htmlH1' },
    markdownH2 = { link = 'htmlH2' },
    markdownLinkText = { link = 'Link' },

    ['@punctuation.special.markdown'] = { fg = C.cyan.bright, bold = true }, -- Changed to cyan
    ['@text.todo.unchecked'] = { fg = C.teal.base },  -- For brackets and parens.
    ['@text.todo.checked'] = { fg = C.orange.base },   -- For brackets and parens.
    ['@text.literal.markdown_inline'] = { bg = C.gray.base, fg = C.red.base },
    ['@text.literal.markdown'] = { link = 'Normal' },
    ['helpCommand'] = { bg = C.black.dark, fg = C.purple.base },

    debugPC = { bg = C.bg_sidebar },                      -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = C.red.bright },              -- used for breakpoint colors in terminal-debug
}
