local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
local plugins = {
  {
    "andweeb/presence.nvim",
    config = function()
      require "custom.configs.presence-nvim"
    end,
    lazy = false,
    enabled = true,
  },

  {
    "folke/zen-mode.nvim",
    config = function()
      require "custom.plugins.zen-mode"
    end,
    lazy = false,
    enabled = true,
  },

  {
    "glepnir/dashboard-nvim",
    event = "VimEnter",
    config = function()
      require "custom.plugins.dashboard-nvim"
    end,
    dependencies = { { "nvim-tree/nvim-web-devicons" } },
  },

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
    end,
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },

  {
    "nvim-treesitter/playground",
    config = function()
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
    enabled = true,
  },

  {
    "NvChad/base46",
    enabled = true,
  },
}

return plugins
