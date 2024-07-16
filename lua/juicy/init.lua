local C = require 'juicy.config'
local G = require 'juicy.groups'
local U = require 'juicy.utils'

local M = {}

function M.load(opts)
    if not U.loaded() then
        vim.api.nvim_command 'hi clear'
        vim.o.termguicolors = true
        vim.g.colors_name = U.NAME
    end

    C.setup(opts)

    -- Apply theme
    require('juicy.colors').extend_palette(C.options.theme)
    U.highlight(G.get_groups())
    --G.set_term_colors()
end

-- Add command to nvim
vim.api.nvim_create_user_command('juicy', function(_)
    vim.api.nvim_command 'colorscheme Juicy'
end, {
    nargs = 1,
})

M.setup = C.setup

return M
