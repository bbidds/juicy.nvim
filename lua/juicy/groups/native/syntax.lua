-- Notes and format from @folke/tokyonight.nvim.

local C = require 'juicy.colors'          -- Require the juicy color palette.
local O = require('juicy.config').options -- Load configuration options for juicy colors.

return {
    Constant = { fg = C.orange.base },         -- (preferred) Represents any constant.
    Number = { fg = C.cyan.base },             -- Number constant: e.g., 234, 0xff
    Boolean = { fg = C.green.bright },          -- Boolean constants: TRUE, false
    Float = { fg = C.red.base },                -- Floating point constant: e.g., 2.3e10
    None = { fg = C.none, bg = C.none },       -- Represents 'nil' or empty values.

    String = { fg = C.gray.gyn1 },             -- String constant: e.g., "this is a string"
    Character = { fg = C.blue.bright },         -- Character constant: e.g., 'c', '\n'
    Variable = { fg = C.green.base },           -- Variable names, differentiated for clarity.
    Namespace = { fg = C.gray.hl0 },            -- Namespaces for organization.
    Field = { fg = C.gray.gyn2 },               -- Fields within tables or objects.

    Title = { fg = C.teal.bright },             -- Title elements, changed to teal for better contrast.

    Builtin = { fg = C.red.subtle },            -- Built-in identifiers, subtly highlighted.

    Identifier = { fg = C.gray.gyn1 },          -- (preferred) Any variable name.
    Function = { fg = C.orange.bright },        -- Function names, changed for better contrast.

    Keyword = { fg = C.cyan.bright, bold = O.bold_keywords }, -- Keywords highlighted in cyan for distinction.
    Statement = { link = 'Keyword' },           -- Any statement that matches keyword styles.
    Conditional = { link = 'Keyword' },         -- Conditional keywords: if, then, else, etc.
    Repeat = { link = 'Keyword' },              -- Loop constructs: for, do, while, etc.
    Label = { link = 'Keyword' },               -- Case labels, defaults, etc.
    Operator = { fg = C.orange.base },          -- Operators like "sizeof", "+", "*", etc.

    Macro = { fg = C.green.base },              -- Macros, typically similar to defines.
    Exception = { link = 'Macro' },             -- Exception handling keywords.
    PreProc = { fg = C.red.subtle },            -- Preprocessor directives.
    Include = { fg = C.blue.bright },           -- Include directives highlighted in blue.
    Define = { fg = C.teal.base },              -- Preprocessor #define directives.
    PreCondit = { link = 'Macro' },             -- Conditional preprocessor directives.

    Comment = { fg = C.gray.g1, italic = O.italic_comments }, -- Comments styled in italic for readability.

    Type = { fg = C.yellow.bright },            -- Type names highlighted in a light yellow shade.
    StorageClass = { link = 'Keyword' },        -- Storage class specifiers.
    Structure = { fg = C.cyan.bright },         -- Structures, unions, enums highlighted.
    Typedef = { fg = C.orange.base },            -- Typedefs with enhanced visibility.

    Special = { fg = C.red.base },               -- Special symbols or keywords.

    Class = { fg = C.teal.bright },              -- Class names highlighted in bright teal.
    Property = { fg = C.blue.base },             -- Properties of objects/classes.
    Enum = { fg = C.yellow.base },               -- Enum types highlighted for distinction.
    Interface = { fg = C.green.base },           -- Interface declarations.
    Annotation = { fg = C.orange.bright },       -- Annotations in languages like Java or Python.
    FunctionCall = { fg = C.cyan.bright },      -- Function calls styled for visibility.
    Method = { fg = C.green.bright },            -- Methods, highlighted distinctly.
    ConstantColor = { fg = C.red.subtle },      -- Constants with color styling.
    SpecialChar = { fg = C.gray.g2 },           -- Special characters in strings.

    VariableScope = { fg = C.teal.base },        -- Scope variables with clear visibility.
    Parameter = { fg = C.orange.bright },        -- Parameters in function definitions.

    -- Ignore, below may be invisible...
    Ignore = { fg = C.gray.g0 },                 -- Left blank, hidden elements.

    Error = { fg = C.red.bright },               -- Highlighted for erroneous constructs.
    Todo = { fg = C.blue.bright, bold = true },  -- TODO comments highlighted in bright blue.
    Note = { fg = C.black.bright, bg = C.info }, -- Notes styled with a bright foreground and info background.

    -- Additional UI elements:
    qfLineNr = { fg = C.gray.gy0 },              -- Quickfix line number.
    qfFileName = { fg = C.blue.base },           -- Quickfix file names.

    htmlH1 = { fg = C.teal.base, bold = true },  -- HTML headers styled with teal.
    htmlH2 = { fg = C.orange.base },              -- Second level headers styled with orange.

    Link = { fg = C.blue.b1, underline = true },  -- Links styled for visibility.
    CodeBlock = { bg = C.orange.base, fg = C.fg }, -- Code blocks highlighted distinctly.

    -- Markdown styling
    mkdHeading = { link = 'htmlH1' },
    mkdCode = { link = 'CodeBlock' },
    mkdCodeDelimiter = { link = 'CodeBlock' },
    mkdCodeStart = { fg = C.cyan.base, bold = true }, -- Markdown code start highlighted.
    mkdCodeEnd = { fg = C.cyan.base, bold = true },   -- Markdown code end highlighted.
    mkdLink = { link = 'Link' },                      -- Markdown links styled.

    markdownHeadingDelimiter = { link = 'mkdHeading' },
    markdownCode = { link = 'CodeBlock' },
    markdownCodeBlock = { link = 'CodeBlock' },
    markdownH1 = { link = 'htmlH1' },
    markdownH2 = { link = 'htmlH2' },
    markdownLinkText = { link = 'Link' },

    -- Markdown specific highlighting
    ['@punctuation.special.markdown'] = { fg = C.teal.bright, bold = true }, -- Special punctuation in markdown.
    ['@text.todo.unchecked'] = { fg = C.blue.b1 }, -- Unchecked TODO items.
    ['@text.todo.checked'] = { fg = C.green.base }, -- Checked TODO items.
    ['@text.literal.markdown_inline'] = { bg = C.cyan.base, fg = C.blue.b1 }, -- Inline markdown text.
    ['@text.literal.markdown'] = { link = 'Normal' }, -- General markdown text styling.
    ['helpCommand'] = { bg = C.black.dark, fg = C.blue.b1 }, -- Help command styling.

    debugPC = { bg = C.bg_sidebar },          -- Highlighting for current line in terminal debug.
    debugBreakpoint = { fg = C.red.bright },  -- Breakpoint colors in terminal debug.
}
