# juicy.nvim

A Neovim colorscheme based on [Nord](https://www.nordtheme.com/), but in lighter colors. The idea behind this colorscheme is to use Nord, but add some lighter colors and use Aurora more prominently than Nord themes usually do. This ends up creating a colorscheme that is soft on the eyes in the light.

If there is anything that does not seem right, even if it is a very small highlight, please let me know with an issue or PR!

# 📦 Installation

With [packer.nvim](https://github.com/wbthomason/packer.nvim):

```lua
use 'dgox16/devicon-colorscheme.nvim'
use 'bbidds/juicy.nvim'
```

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
  {
    'bbidds/juicy.nvim',
    priority = 1000,
    lazy = false,
    dependencies = {
    	'dgox16/devicon-colorscheme.nvim', -- optional for icon colors
    },
    config = function()
      local C = require('juicy.colors')
      require('juicy').load {
        cursorline = {
          theme = 'dark',
        },
      }
      -- optional
      require('devicon-colorscheme').setup {
      colors = {
          blue = C.blue.bright,
          cyan = C.cyan.bright,
          green = C.green.bright,
          magenta = C.pink.bright,
          orange = C.orange.bright,
          purple = C.purple.bright,
          red = C.red.bright,
          white = C.white.normal,
          yellow = C.yellow.bright,
          bright_blue = C.blue.soft,
          bright_cyan = C.cyan.soft,
          bright_green = C.green.soft,
          bright_magenta = C.magenta.soft,
          bright_orange = C.orange.soft,
          bright_purple = C.purple.soft,
          bright_red = C.red.soft,
          bright_yellow = C.yellow.soft,
      },
      }
      end
  }
```

With [vim-plug](https://github.com/junegunn/vim-plug):

```vim
Plug 'bbidds/juicy.nvim', { 'branch': 'main' }
Plug 'dgox16/devicon-colorscheme.nvim',
```

# 🚀 Usage

Using vim:

```vim
colorscheme juicy
```

Using lua:

```lua
vim.cmd.colorscheme 'juicy'
-- or
require 'juicy' .load()
```

Using with lualine:

```lua
require 'lualine' .setup {
    options = {
        theme = 'juicy'
    }
}
```

To get the palette in lua:

```lua
local palette = require 'juicy.colors'
```

# ⚙️ Configuration

Foggy will use the default values, unless `setup` is called. Below is the default configuration.

```lua
require 'juicy' .setup {
    -- This callback can be used to override the colors used in the palette.
    on_palette = function(palette) return palette end,

    -- Enable bold keywords.
    bold_keywords = false,
    -- Enable italic comments.
    italic_comments = true,
    -- Enable general editor background transparency.
    transparent_bg = false,
    -- Enable background highlighting
    bg_highlight = true,
    -- Enable brighter float border.
    bright_border = false,
    -- Reduce the overall amount of blue in the theme (diverges from base Nord).
    reduced_blue = false,
    -- Swap the dark background with the normal one.
    swap_backgrounds = false,
    -- Override the styling of any highlight group.
    override = {},
    -- Cursorline options.  Also includes visual/selection.
    cursorline = {
        -- Bold font in cursorline.
        bold = false,
        -- Bold cursorline number.
        bold_number = true,
        -- Avialable styles: 'dark', 'light'.
        theme = 'light',
        -- Blending the cursorline bg with the buffer bg.
        blend = 0.6,
        -- Visual blend
        visual_blend = 0.4,
    },
    noice = {
        -- Available styles: `classic`, `flat`.
        style = 'classic',
    },
    telescope = {
        -- Available styles: `classic`, `flat`.
        style = 'flat',
    },
    leap = {
        -- Dims the backdrop when using leap.
        dim_backdrop = false,
    },
    ts_context = {
        -- Enables dark background for treesitter-context window
        dark_background = true,
    }
}
```

An example of overriding the `TelescopePromptTitle` colors:

```lua
local palette = require 'juicy.colors'
require 'juicy' .setup {
    override = {
        TelescopePromptTitle = {
            fg = palette.red.bright,
            bg = palette.green.base,
            italic = true,
            underline = true,
            sp = palette.yellow.dim,
            undercurl = false
        }
    }
}
```
