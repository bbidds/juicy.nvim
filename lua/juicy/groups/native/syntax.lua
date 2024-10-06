-- Juicy Colors and Syntax Highlighting Configuration
-- Notes and format from @folke/tokyonight.nvim

local C = require 'juicy.colors'  -- Importing juicy colors
local O = require('juicy.config').options  -- Importing options for customization

return {
    -- Constants
    Constant = { fg = C.orange.base },         -- Any constant
    Number = { fg = C.cyan.base },             -- Number constant: 234, 0xff
    Boolean = { fg = C.green.bright },          -- Boolean constant: TRUE, false
    Float = { fg = C.red.base },                -- Floating point constant: 2.3e10
    None = { fg = C.none, bg = C.none },       -- No color

    -- Strings and Characters
    String = { fg = C.gray.gyn1 },             -- String constant: "this is a string"
    Character = { fg = C.blue.bright },         -- Character constant: 'c', '\n'

    -- Variables and Namespaces
    Variable = { fg = C.green.base },           -- Any variable name
    Namespace = { fg = C.gray.hl0 },            -- Namespace
    Field = { fg = C.gray.gyn2 },               -- Field

    -- Titles and Identifiers
    Title = { fg = C.teal.bright },             -- Title with better contrast
    Builtin = { fg = C.red.subtle },            -- Built-in identifiers

    Identifier = { fg = C.gray.gyn1 },          -- Variable name
    Function = { fg = C.orange.bright },        -- Function names with better contrast

    -- Keywords and Statements
    Keyword = { fg = C.cyan.bright, bold = O.bold_keywords }, -- Keywords with better differentiation
    Statement = { link = 'Keyword' },            -- General statements
    Conditional = { link = 'Keyword' },          -- Conditionals: if, then, else, etc.
    Repeat = { link = 'Keyword' },               -- Repetitive statements: for, do, while
    Label = { link = 'Keyword' },                -- Labels: case, default, etc.
    Operator = { fg = C.orange.base },           -- Operators: "sizeof", "+", "*", etc.

    -- Macros and Preprocessor Directives
    Macro = { fg = C.green.base },               -- Macros
    Exception = { link = 'Macro' },              -- Exception handling: try, catch
    PreProc = { fg = C.red.subtle },             -- Preprocessor directives
    Include = { fg = C.blue.bright },            -- Includes
    Define = { fg = C.teal.base },               -- Preprocessor #define
    PreCondit = { link = 'Macro' },              -- Preprocessor conditions

    -- Comments
    Comment = { fg = C.gray.g1, italic = O.italic_comments }, -- Comments with italics

    -- Types and Classes
    Type = { fg = C.yellow.bright },             -- Types with better differentiation
    StorageClass = { link = 'Keyword' },         -- Storage classes
    Structure = { fg = C.cyan.bright },          -- Structures: struct, union, enum
    Typedef = { fg = C.orange.base },             -- Typedefs

    -- Special Characters
    Special = { fg = C.red.base },                -- Special symbols

    -- Class and Object Properties
    Class = { fg = C.teal.bright },               -- Class names
    Property = { fg = C.blue.base },              -- Object properties
    Enum = { fg = C.yellow.base },                -- Enumerations
    Interface = { fg = C.green.base },            -- Interfaces
    Annotation = { fg = C.orange.bright },        -- Annotations
    FunctionCall = { fg = C.cyan.bright },       -- Function calls
    Method = { fg = C.green.bright },             -- Method calls
    ConstantColor = { fg = C.red.subtle },       -- Constants with colors
    SpecialChar = { fg = C.gray.g2 },            -- Special characters in strings

    -- Variable Scopes and Parameters
    VariableScope = { fg = C.teal.base },         -- Scoped variables
    Parameter = { fg = C.orange.bright },        -- Function parameters

    -- Ignore Section
    Ignore = { fg = C.gray.g0 },                 -- Hidden constructs

    -- Error and Todo Highlighting
    Error = { fg = C.red.bright },                -- Error highlighting
    Todo = { fg = C.blue.bright, bold = true },  -- Todo notes in blue
    Note = { fg = C.black.bright, bg = C.info }, -- Notes with custom background

    -- Quickfix Highlighting
    qfLineNr = { fg = C.gray.gy0 },              -- Quickfix line number
    qfFileName = { fg = C.blue.base },           -- Quickfix file name

    -- HTML and Markdown Highlights
    htmlH1 = { fg = C.teal.base, bold = true },  -- HTML header 1
    htmlH2 = { fg = C.orange.base },              -- HTML header 2

    -- Links and Code Blocks
    Link = { fg = C.blue.b1, underline = true },  -- Hyperlinks
    CodeBlock = { bg = C.orange.base, fg = C.fg }, -- Code blocks

    -- Markdown Links and Headings
    mkdHeading = { link = 'htmlH1' },             -- Markdown headings
    mkdCode = { link = 'CodeBlock' },             -- Markdown code
    mkdCodeDelimiter = { link = 'CodeBlock' },    -- Markdown code delimiter
    mkdCodeStart = { fg = C.cyan.base, bold = true }, -- Start of code in Markdown
    mkdCodeEnd = { fg = C.cyan.base, bold = true }, -- End of code in Markdown
    mkdLink = { link = 'Link' },                   -- Markdown links

    -- More Markdown Highlights
    markdownHeadingDelimiter = { link = 'mkdHeading' },
    markdownCode = { link = 'CodeBlock' },
    markdownCodeBlock = { link = 'CodeBlock' },
    markdownH1 = { link = 'htmlH1' },
    markdownH2 = { link = 'htmlH2' },
    markdownLinkText = { link = 'Link' },

    -- Markdown Special Punctuation
    ['@punctuation.special.markdown'] = { fg = C.teal.bright, bold = true },  -- Special punctuation in Markdown
    ['@text.todo.unchecked'] = { fg = C.blue.b1 },  -- Unchecked todo items
    ['@text.todo.checked'] = { fg = C.green.base }, -- Checked todo items
    ['@text.literal.markdown_inline'] = { bg = C.cyan.base, fg = C.blue.b1 }, -- Inline Markdown literals
    ['@text.literal.markdown'] = { link = 'Normal' }, -- Normal link for Markdown literals
    ['helpCommand'] = { bg = C.black.dark, fg = C.blue.b1 }, -- Help command highlight

    -- Debugging Highlights
    debugPC = { bg = C.bg_sidebar },         -- Current line in terminal-debug
    debugBreakpoint = { fg = C.red.bright }, -- Breakpoint colors in terminal-debug
}
