local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {
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
    opts = overrides.nvimtree,
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
    enabled = false
  },

}

return plugins
