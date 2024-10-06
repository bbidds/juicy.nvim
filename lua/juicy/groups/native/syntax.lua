-- Notes and format from @folke/tokyonight.nvim.

local C = require 'juicy.colors'            -- Importing juicy colors
local O = require('juicy.config').options   -- Importing user options

return {
    Constant = { fg = C.orange.base },       -- Preferred constant color
    Number = { fg = C.cyan.base },           -- Number constants (e.g., 234, 0xff)
    Boolean = { fg = C.green.bright },        -- Boolean constants (TRUE, false)
    Float = { fg = C.red.base },              -- Floating point constants (e.g., 2.3e10)
    None = { fg = C.none, bg = C.none },     -- No color
    String = { fg = C.gray.gyn1 },           -- String constants (e.g., "string")
    Character = { fg = C.blue.bright },       -- Character constants (e.g., 'c', '\n')
    Variable = { fg = C.green.base },         -- Variable names
    Namespace = { fg = C.gray.hl0 },          -- Namespace identifiers
    Field = { fg = C.gray.gyn2 },             -- Fields in structures

    Title = { fg = C.teal.bright },           -- Titles in teal for better contrast

    Builtin = { fg = C.red.subtle },          -- Built-in identifiers

    Identifier = { fg = C.gray.gyn1 },        -- Variable names (preferred)
    Function = { fg = C.orange.bright },      -- Function names in orange for contrast

    -- Keywords and statements
    Keyword = { fg = C.cyan.bright, bold = O.bold_keywords },  -- Keywords in cyan
    Statement = { link = 'Keyword' },         -- Statement links to keywords
    Conditional = { link = 'Keyword' },       -- Conditional keywords
    Repeat = { link = 'Keyword' },            -- Repeated keywords
    Label = { link = 'Keyword' },             -- Labels
    Operator = { fg = C.orange.base },        -- Operators (e.g., "+", "*")

    Macro = { fg = C.green.base },            -- Macro definitions
    Exception = { link = 'Macro' },           -- Exception keywords
    PreProc = { fg = C.red.subtle },          -- Preprocessor directives
    Include = { fg = C.blue.bright },         -- Include statements
    Define = { fg = C.teal.base },            -- Preprocessor #define directives
    PreCondit = { link = 'Macro' },           -- Preprocessor conditionals

    Comment = { fg = C.gray.g1, italic = O.italic_comments },  -- Comments

    -- Type and structure definitions
    Type = { fg = C.yellow.bright },           -- Type definitions
    StorageClass = { link = 'Keyword' },      -- Storage class keywords
    Structure = { fg = C.cyan.bright },       -- Structure types
    Typedef = { fg = C.orange.base },          -- Type definitions (typedef)

    Special = { fg = C.red.base },             -- Special symbols

    -- Object-oriented programming
    Class = { fg = C.teal.bright },            -- Class names
    Property = { fg = C.blue.base },           -- Object properties
    Enum = { fg = C.yellow.base },             -- Enumerations
    Interface = { fg = C.green.base },         -- Interfaces
    Annotation = { fg = C.orange.bright },     -- Annotations
    FunctionCall = { fg = C.cyan.bright },     -- Function calls
    Method = { fg = C.green.bright },          -- Method definitions
    ConstantColor = { fg = C.red.subtle },     -- Constants with colors
    SpecialChar = { fg = C.gray.g2 },          -- Special characters in strings

    VariableScope = { fg = C.teal.base },      -- Scope variables
    Parameter = { fg = C.orange.bright },      -- Function parameters

    -- Ignored (may be invisible)
    Ignore = { fg = C.gray.g0 },               -- Hidden

    -- Error and notification colors
    Error = { fg = C.red.bright },             -- Error indicators
    Todo = { fg = C.blue.bright, bold = true }, -- Todo highlights
    Note = { fg = C.black.bright, bg = C.info },  -- Notes

    -- Quickfix colors
    qfLineNr = { fg = C.gray.gy0 },           -- Quickfix line numbers
    qfFileName = { fg = C.blue.base },        -- Quickfix filenames

    -- HTML and Markdown headings
    htmlH1 = { fg = C.teal.base, bold = true },        -- H1 headings
    htmlH2 = { fg = C.orange.base },                   -- H2 headings

    Link = { fg = C.blue.b1, underline = true },      -- Links
    CodeBlock = { bg = C.orange.base, fg = C.fg },    -- Code blocks

    -- Markdown links and headings
    mkdHeading = { link = 'htmlH1' },                  -- Markdown headings
    mkdCode = { link = 'CodeBlock' },                  -- Markdown code
    mkdCodeDelimiter = { link = 'CodeBlock' },        -- Markdown code delimiters
    mkdCodeStart = { fg = C.cyan.base, bold = true }, -- Start of Markdown code
    mkdCodeEnd = { fg = C.cyan.base, bold = true },   -- End of Markdown code
    mkdLink = { link = 'Link' },                       -- Markdown links

    -- Markdown configurations
    markdownHeadingDelimiter = { link = 'mkdHeading' },  -- Markdown heading delimiters
    markdownCode = { link = 'CodeBlock' },              -- Markdown code
    markdownCodeBlock = { link = 'CodeBlock' },        -- Markdown code blocks
    markdownH1 = { link = 'htmlH1' },                   -- Markdown H1 headings
    markdownH2 = { link = 'htmlH2' },                   -- Markdown H2 headings
    markdownLinkText = { link = 'Link' },               -- Markdown link text

    -- Syntax highlighting for Markdown
    ['@punctuation.special.markdown'] = { fg = C.teal.bright, bold = true }, -- Special punctuation
    ['@text.todo.unchecked'] = { fg = C.blue.b1 },   -- Unchecked todo items
    ['@text.todo.checked'] = { fg = C.green.base },   -- Checked todo items
    ['@text.literal.markdown_inline'] = { bg = C.cyan.base, fg = C.blue.b1 }, -- Inline markdown literals
    ['@text.literal.markdown'] = { link = 'Normal' }, -- Literal markdown text
    ['helpCommand'] = { bg = C.black.dark, fg = C.blue.b1 }, -- Help command styling

    -- Debugging
    debugPC = { bg = C.bg_sidebar },        -- Debug current line
    debugBreakpoint = { fg = C.red.bright }, -- Debug breakpoints
}
