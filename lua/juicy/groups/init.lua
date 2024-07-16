local merge = require('juicy.utils').merge
local C = require 'juicy.config'

local M = {}

M.integrations = {
    'nvim-dap-ui',
    'nvim-dap',
    'nvim-notify',
    'dashboard',
    'indent-blankline',
    'lspsaga',
    'neo-tree',
    'nvim-tree',
    'treesitter',
    'trouble',
    'which-key',
    'gitsigns',
    'telescope',
    'leap',
    'diffview',
    'nvim-cmp',
    'vimtex',
    'noice',
    'lazy',
    'lsp_signature',
    'ministatusline',
    'fzf-lua',
    'dev-icons'
}

M.native = {
    'editor',
    'syntax',
    'diff',
    'lsp',
}

function M.get_groups()
    local groups = {}
    for _, native in ipairs(M.native) do
        groups = merge(groups, require('juicy.groups.native.' .. native))
    end
    for _, integration in ipairs(M.integrations) do
        groups = merge(groups, require('juicy.groups.integrations.' .. integration))
    end
    return merge(groups, C.options.override)
end

return M
