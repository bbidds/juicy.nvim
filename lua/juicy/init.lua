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

    if opts then C.setup(opts) end

    -- Apply theme
    require('juicy.colors').extend_palette(C.setup(opts))
    U.highlight(G.get_groups())
    -- G.set_term_colors()
end

-- Add command to nvim
vim.api.nvim_create_user_command('Juicy', function(_)
    vim.api.nvim_command 'colorscheme juicy'
end, {
    nargs = 1,
})

M.setup = C.setup

return M
