local C = require 'juicy.colors'
local O = require('juicy.config').options

-- Classic.
local groups = {

    TelescopeNormal = { bg = C.bg },
    TelescopePromptNormal = { bg = C.bg },
    TelescopeResultsNormal = { bg = C.bg },
    TelescopePreviewNormal = { bg = C.bg },
    TelescopePreviewLine = { bg = C.gray.dull2 },

    TelescopeSelection = { bg = C.bg, fg = C.yellow.bright, bold = false },
    TelescopeSelectionCaret = { fg = C.yellow.bright, bg = C.bg, bold = true },

    TelescopePreviewTitle = { fg = C.white.normal, bg = C.bg, bold = true },
    TelescopeResultsTitle = { fg = C.white.normal, bg = C.bg, bold = true },
    TelescopePromptTitle = { fg = C.white.normal, bg = C.bg, bold = true },
    TelescopeTitle = { fg = C.white.normal, bg = C.bg, bold = true },

    TelescopeBorder = { fg = C.white.normal, bg = C.bg },
    TelescopePromptBorder = { fg = C.white.normal, bg = C.bg },
    TelescopeResultsBorder = { fg = C.white.normal, bg = C.bg },
    TelescopePreviewBorder = { fg = C.white.normal, bg = C.bg },

    TelescopeMatching = { bold = true },
    TelescopePromptPrefix = { bg = C.bg, fg = C.orange.bright },

    TelescopeMultiIcon = { fg = C.yellow.bright, bg = C.bg, bold = true },
    TelescopeMultiSelection = { bg = C.bg },
}

if O.telescope.style == 'flat' then
    groups.TelescopeNormal = { bg = C.black.medium }
    groups.TelescopePromptNormal = { bg = C.black.normal }
    groups.TelescopeResultsNormal = { bg = C.black.medium }
    groups.TelescopePreviewNormal = { bg = C.black.medium }

    groups.TelescopeSelection = { fg = C.yellow.brigt, bg = C.black.medium }
    groups.TelescopeSelectionCaret = { fg = C.yellow.bright, bg = C.black.medium, bold = true }

    groups.TelescopePreviewTitle = { bg = C.blue.b2, fg = C.black.dark, bold = true }
    groups.TelescopeResultsTitle = { bg = C.orange.base, fg = C.black.dark, bold = true }
    groups.TelescopePromptTitle = { bg = C.orange.base, fg = C.black.dark, bold = true }
    groups.TelescopeTitle = { bg = C.orange.base, fg = C.black.dark, bold = true }

    groups.TelescopeBorder = { fg = C.black.dark, bg = C.black.dark }
    groups.TelescopePromptBorder = { bg = C.black.medium, fg = C.black.dark }
    groups.TelescopeResultsBorder = { bg = C.black.medium, fg = C.black.dark }
    groups.TelescopePreviewBorder = { bg = C.black.medium, fg = C.black.dark }

    groups.TelescopeMultiIcon = { fg = C.yellow.bright, bg = C.black.dark, bold = true }
    groups.TelescopeMultiSelection = { bg = C.black.dark }
    groups.TelescopePromptPrefix = { bg = C.black.normal, fg = C.orange.bright }

    groups.TelescopePreviewLine = { bg = C.gray.dull2 }
end

return groups
