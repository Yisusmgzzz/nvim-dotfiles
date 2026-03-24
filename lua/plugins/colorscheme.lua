return {
  {
    -- {
    --   "xiyaowong/transparent.nvim",
    --   config = function()
    --     require("transparent").setup({
    --       extra_groups = { -- table/string: additional groups that should be cleared
    --         "Normal",
    --         "NormalNC",
    --         "Comment",
    --         "Constant",
    --         "Special",
    --         "Identifier",
    --         "Statement",
    --         "PreProc",
    --         "Type",
    --         "Underlined",
    --         "Todo",
    --         "String",
    --         "Function",
    --         "Conditional",
    --         "Repeat",
    --         "Operator",
    --         "Structure",
    --         "LineNr",
    --         "NonText",
    --         "SignColumn",
    --         "CursorLineNr",
    --         "EndOfBuffer",
    --       },
    --       exclude_groups = {}, -- table: groups you don't want to clear
    --     })
    --   end,
    -- },

    {
      "rose-pine/Neovim",
      name = "rose-pine",
      priority = 1000,
      lazy = true,
      config = function()
        require("rose-pine").setup({
          variant = "auto", -- auto, main, moon, or dawn
          dark_variant = "main", -- main, moon, or dawn
          dim_inactive_windows = false,
          extend_background_behind_borders = true,

          enable = {
            terminal = true,
            legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
            migrations = true, -- Handle deprecated options automatically
          },

          styles = {
            bold = true,
            italic = true,
            transparency = true,
          },
          palette = {
            -- Override the builtin palette per variant
            -- moon = {
            --     base = '#18191a',
            --     overlay = '#363738',
            --},
          },
        })
      end,
    },

    {
      "catppuccin/nvim",
      name = "catppuccin",
      priority = 1000,
      opts = {
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = true, -- disables setting the background color.
        term_colors = true, -- sets terminal colors (e.g. `g:terminal_color_0`)
      },
    },
    {
      "b0o/lavi",
      lazy = false,
      priority = 1000,
      config = function()
        vim.g.lavi_config = {
          transparent = true,
        }
        vim.cmd.colorscheme("lavi")
      end,
    },
    {
      "Gentleman-Programming/gentleman-kanagawa-blur",
      name = "gentleman-kanagawa-blur",
      priority = 1000,
    },
    {
      "Alan-TheGentleman/oldworld.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },
    {
      "rebelot/kanagawa.nvim",
      priority = 1000,
      lazy = true,
      config = function()
        require("kanagawa").setup({
          compile = false, -- enable compiling the colorscheme
          undercurl = true, -- enable undercurls
          commentStyle = { italic = true },
          functionStyle = {},
          keywordStyle = { italic = true },
          statementStyle = { bold = true },
          typeStyle = {},
          transparent = true, -- do not set background color
          dimInactive = false, -- dim inactive window `:h hl-NormalNC`
          terminalColors = true, -- define vim.g.terminal_color_{0,17}
          colors = { -- add/modify theme and palette colors
            palette = {},
            theme = {
              wave = {},
              lotus = {},
              dragon = {},
              all = {
                ui = {
                  bg_gutter = "none", -- set bg color for normal background
                  bg_sidebar = "none", -- set bg color for sidebar like nvim-tree
                  bg_float = "none", -- set bg color for floating windows
                },
              },
            },
          },
          overrides = function(colors) -- add/modify highlights
            return {
              LineNr = { bg = "none" },
              NormalFloat = { bg = "none" },
              FloatBorder = { bg = "none" },
              FloatTitle = { bg = "none" },
              TelescopeNormal = { bg = "none" },
              TelescopeBorder = { bg = "none" },
              LspInfoBorder = { bg = "none" },
            }
          end,
          theme = "wave", -- Load "wave" theme
          background = { -- map the value of 'background' option to a theme
            dark = "wave", -- try "dragon" !
            light = "lotus",
          },
        })
      end,
    },
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "rose-pine",
      },
    },
  },
}
