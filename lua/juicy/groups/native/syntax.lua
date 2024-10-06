local C = require 'juicy.colors'
local O = require('juicy.config').options

return {
    Constant = { fg = C.red.bright },           -- (preferred) any constant
    Number = { fg = C.teal.bright },            -- a number constant: 234, 0xff
    Boolean = { fg = C.green.base },             -- a boolean constant: TRUE, false
    Float = { fg = C.purple.bright },            -- a floating point constant: 2.3e10
    None = { fg = C.none, bg = C.none },
    String = { fg = C.cyan.bright },             -- a string constant: "this is a string"
    Character = { fg = C.cyan.bright },          -- a character constant: 'c', '\n'
    Variable = { fg = C.gray.g1 },               -- Reduced from yellow to a gray tone
    Namespace = { fg = C.gray.gyn1 },
    Field = { fg = C.green.bright },

    Title = { fg = C.gray.g3 },                  -- Changed for better contrast

    Builtin = { fg = C.blue.base },

    Identifier = { fg = C.cyan.base },           -- (preferred) any variable name
    Function = { fg = C.teal.base },              -- Changed for better contrast

    Keyword = { fg = C.purple.base, bold = O.bold_keywords }, -- Changed to purple for better differentiation
    Statement = { link = 'Keyword' },             -- (preferred) any statement
    Conditional = { link = 'Keyword' },           -- if, then, else, endif, switch, etc.
    Repeat = { link = 'Keyword' },                -- for, do, while, etc.
    Label = { link = 'Keyword' },                 -- case, default, etc.
    Operator = { fg = C.cyan.base },              -- Changed to cyan for a more neutral tone

    Macro = { fg = C.green.base },                -- same as Define
    Exception = { link = 'Macro' },               -- try, catch, throw
    PreProc = { fg = C.red.subtle },              -- (preferred) generic preprocessor
    Include = { fg = C.blue.bright },             -- Changed to blue for better contrast
    Define = { fg = C.teal.bright },              -- preprocessor #define
    PreCondit = { link = 'Macro' },               -- preprocessor #if, #else, #endif, etc.

    Comment = { fg = C.gray.g1, italic = O.italic_comments },

    Type = { fg = C.green.bright },               -- Changed to a more vibrant green for better differentiation
    StorageClass = { link = 'Keyword' },          -- static, register, volatile, etc.
    Structure = { fg = C.purple.bright },         -- struct, union, enum, etc.
    Typedef = { fg = C.gray.g2 },                 -- Changed to gray for better contrast

    Special = { fg = C.red.subtle },              -- (preferred) any special symbol

    Class = { fg = C.teal.base },                 -- class names
    Property = { fg = C.blue.base },              -- object and class properties
    Enum = { fg = C.cyan.bright },                -- enumerations
    Interface = { fg = C.cyan.bright },           -- Changed to cyan for consistency
    Annotation = { fg = C.cyan.base },            -- annotations in Java or Python
    FunctionCall = { fg = C.green.bright },       -- function calls
    Method = { fg = C.green.bright },             -- methods
    ConstantColor = { fg = C.blue.b1 },           -- constants with colors
    SpecialChar = { fg = C.gray.g2 },             -- special characters in strings

    VariableScope = { fg = C.gray.g1 },           -- Changed to gray for consistency
    Parameter = { fg = C.gray.g1 },               -- function parameters

    -- Ignore, below, may be invisible...
    Ignore = { fg = C.gray.g0 },                  -- (preferred) left blank, hidden  |hl-Ignore|

    Error = { fg = C.red.bright },                 -- (preferred) any erroneous construct
    Todo = { fg = C.gray.g1, bold = true },        -- Changed from yellow for better differentiation
    Note = { fg = C.cyan.bright, bg = C.info },

    -- What are these?
    qfLineNr = { fg = C.gray.gy0 },
    qfFileName = { fg = C.green.bright },

    htmlH1 = { fg = C.teal.bright, bold = true },  -- Changed from yellow to teal
    htmlH2 = { fg = C.gray.g3 },                    -- Changed for better contrast

    Link = { fg = C.blue.b1, underline = true },
    CodeBlock = { bg = C.gray.g0, fg = C.fg },    -- Changed bg to gray

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

    ['@punctuation.special.markdown'] = { fg = C.gray.g2, bold = true },  -- Changed to gray for consistency
    ['@text.todo.unchecked'] = { fg = C.gray.g2 },  -- For brackets and parens.
    ['@text.todo.checked'] = { fg = C.green.base }, -- For brackets and parens.
    ['@text.literal.markdown_inline'] = { bg = C.cyan.base, fg = C.blue.b1 },
    ['@text.literal.markdown'] = { link = 'Normal' },
    ['helpCommand'] = { bg = C.black.dark, fg = C.blue.b1 },

    debugPC = { bg = C.bg_sidebar },               -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = C.red.bright },       -- used for breakpoint colors in terminal-debug
}
