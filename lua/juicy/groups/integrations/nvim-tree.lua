local C = require 'juicy.colors'
local O = require('juicy.config').options

return {

    NvimTreeNormal = { fg = C.fg },
    NvimTreeNormalNC = { fg = C.fg },

    NvimTreeFolderName = { fg = C.fg_inactive },
    NvimTreeOpenedFolderName = { link = 'NvimTreeFolderName' },
    NvimTreeEmptyFolderName = { link = 'NvimTreeFolderName' },
    NvimTreeFolderIcon = { fg = C.blue.dim },

    NvimTreeSpecialFile = { link = 'NvimTreeFolderName' },

    NvimTreeRootFolder = { fg = C.fg_inactive },
    NvimTreeGitDirty = { fg = C.git.change },
    NvimTreeGitNew = { fg = C.git.add },
    NvimTreeGitDeleted = { fg = C.git.delete },
    NvimTreeGitStaged = { fg = C.fg.highlight },
    NvimTreeIndentMarker = { fg = C.bg_highlight },


    NvimTreeWinSeparator = { fg = C.bg_dark, bg = C.bg },

    NvimTreeCursorLine = { link = 'CursorColumn' },
    NvimTreeCursor = { link = 'Cursor' },

    NvimTreeSymlink = { fg = C.fg_bright },
}
