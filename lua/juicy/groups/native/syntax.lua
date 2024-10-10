local C = require 'juicy.colors'
local O = require('juicy.config').options

return {
    -- Constants
    Constant = { fg = C.red.subtle }, -- (preferred) any constant
    Number = { fg = C.blue.bright },  -- a number constant: 234, 0xff
    Boolean = { fg = C.green.base },  -- a boolean constant: TRUE, false
    Float = { fg = C.purple.bright }, -- a floating point constant: 2.3e10
    None = { fg = C.none, bg = C.none },

    -- Strings and Characters
    String = { fg = C.green.contrast }, -- a string constant: "this is a string"
    Character = { fg = C.cyan.bright }, -- a character constant: 'c', '\n'

    -- Variables
    Variable = { fg = C.red.contrast }, -- Reduced from yellow to a gray tone
    Namespace = { fg = C.gray.gyn1 },
    Field = { fg = C.green.bright },

    Title = { fg = C.gray.g3 }, -- Changed for better contrast

    Builtin = { fg = C.blue.base },

    Identifier = { fg = C.cyan.base },     -- (preferred) any variable name
    Function = { fg = C.purple.contrast }, -- Changed for better contrast

    -- Keywords and Statements
    Keyword = { fg = C.magenta.subtle, bold = O.bold_keywords }, -- Changed to purple for better differentiation
    Statement = { link = 'Keyword' },                            -- (preferred) any statement
    Conditional = { link = 'Keyword' },                          -- if, then, else, endif, switch, etc.
    Repeat = { link = 'Keyword' },                               -- for, do, while, etc.
    Label = { link = 'Keyword' },                                -- case, default, etc.
    Operator = { fg = C.cyan.subtle },                           -- Changed to cyan for a more neutral tone

    -- Macros and Preprocessor
    Macro = { fg = C.green.base },      -- same as Define
    Exception = { link = 'Macro' },     -- try, catch, throw
    PreProc = { fg = C.yellow.subtle }, -- (preferred) generic preprocessor
    Include = { fg = C.blue.contrast }, -- Changed to blue for better contrast
    Define = { fg = C.cyan.bright },    -- preprocessor #define
    PreCondit = { link = 'Macro' },     -- preprocessor #if, #else, #endif, etc.

    -- Comments
    Comment = { fg = C.gray.g1, italic = O.italic_comments },

    -- Types
    Type = { fg = C.green.bright },       -- Changed to a more vibrant green for better differentiation
    StorageClass = { link = 'Keyword' },  -- static, register, volatile, etc.
    Structure = { fg = C.blue.contrast }, -- struct, union, enum, etc.
    Typedef = { fg = C.gray.g2 },         -- Changed to gray for better contrast

    -- Special symbols
    Special = { fg = C.red.subtle }, -- (preferred) any special symbol

    -- Class and Object properties
    Class = { fg = C.teal.base },           -- class names
    Property = { fg = C.blue.base },        -- object and class properties
    Enum = { fg = C.cyan.base },            -- enumerations
    Interface = { fg = C.cyan.bright },     -- Changed to cyan for consistency
    Annotation = { fg = C.cyan.base },      -- annotations in Java or Python
    FunctionCall = { fg = C.green.bright }, -- function calls
    Method = { fg = C.green.bright },       -- methods
    ConstantColor = { fg = C.blue.b1 },     -- constants with colors
    SpecialChar = { fg = C.purple.vivid },  -- special characters in strings

    -- Scope and Parameters
    VariableScope = { fg = C.gray.g1 }, -- Changed to gray for consistency
    Parameter = { fg = C.gray.g1 },     -- function parameters

    -- Ignored or hidden elements
    Ignore = { fg = C.gray.g0 }, -- (preferred) left blank, hidden |hl-Ignore|

    -- Errors and Notices
    Error = { fg = C.red.bright },              -- (preferred) any erroneous construct
    Todo = { fg = C.yellow.base, bold = true }, -- Changed from yellow for better differentiation
    Note = { fg = C.cyan.bright, bg = C.info },

    -- Quickfix elements
    qfLineNr = { fg = C.gray.gy0 },
    qfFileName = { fg = C.green.bright },

    -- HTML and Markdown elements
    htmlH1 = { fg = C.teal.bright, bold = true }, -- Changed from yellow to teal
    htmlH2 = { fg = C.gray.g3 },                  -- Changed for better contrast

    -- Links and Code Blocks
    Link = { fg = C.blue.b1, underline = true },
    CodeBlock = { bg = C.gray.g0, fg = C.fg }, -- Changed bg to gray

    -- Markdown links and code
    mkdHeading = { link = 'htmlH1' },
    mkdCode = { link = 'CodeBlock' },
    mkdCodeDelimiter = { link = 'CodeBlock' },
    mkdCodeStart = { fg = C.cyan.base, bold = true },
    mkdCodeEnd = { fg = C.cyan.base, bold = true },
    mkdLink = { link = 'Link' },

    -- Markdown headings
    markdownHeadingDelimiter = { link = 'mkdHeading' },
    markdownCode = { link = 'CodeBlock' },
    markdownCodeBlock = { link = 'CodeBlock' },
    markdownH1 = { link = 'htmlH1' },
    markdownH2 = { link = 'htmlH2' },
    markdownLinkText = { link = 'Link' },

    -- Punctuation and Text
    ['@punctuation.special.markdown'] = { fg = C.gray.g2, bold = true }, -- Changed to gray for consistency
    ['@text.todo.unchecked'] = { fg = C.gray.g2 },                       -- For brackets and parens.
    ['@text.todo.checked'] = { fg = C.green.base },                      -- For brackets and parens.
    ['@text.literal.markdown_inline'] = { bg = C.cyan.base, fg = C.blue.b1 },
    ['@text.literal.markdown'] = { link = 'Normal' },
    ['helpCommand'] = { bg = C.black.dark, fg = C.blue.b1 },

    -- Debug elements
    debugPC = { bg = C.bg_sidebar },         -- used for highlighting the current line in terminal-debug
    debugBreakpoint = { fg = C.red.bright }, -- used for breakpoint colors in terminal-debug
}
