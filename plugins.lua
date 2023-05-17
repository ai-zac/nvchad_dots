local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
  {
    "folke/zen-mode.nvim",
    config = function()
      require("zen-mode").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end,
    lazy = false,
    enabled = true,
  },

  {
    'akinsho/bufferline.nvim',
    config = function ()
      require "custom.plugins.bufferline"
    end,
    enabled = true,
    lazy = false,
  },

  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require "custom.plugins.dashboard-nvim"
    end,
    dependencies = { {'nvim-tree/nvim-web-devicons'}}
  },

  {"hrsh7th/vim-vsnip"},
  {"hrsh7th/vim-vsnip-integ"},

  {"sainnhe/gruvbox-material"},

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    'nvim-treesitter/playground',
    config = function ()
      require "custom.plugins.playground"
    end,
    lazy = false,
    enabled = true,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
    lazy = false,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true,
        ignore = false,
      },

      renderer = {
        highlight_git = true,
        icons = {
          show = {
            git = true,
          },

          glyphs = {
            git = {
              unstaged = "M",
              staged = "A",
              unmerged = "U",
              renamed = "R",
              untracked = "?",
              deleted = "D",
              ignored = "!",
            },
          },
        },
      },
    },
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  {
    "NvChad/nvim-colorizer.lua",
    enabled = true
  },

  {
    "NvChad/base46",
    enabled = true,
  },
}

return plugins
