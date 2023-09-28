---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "kanagawa",
  transparency = true,
  lsp_semantic_tokens = true, -- needs nvim v0.9, just adds highlight groups for lsp semantic tokens

  hl_override = highlights.override,
  hl_add = highlights.add,

  telescope = {style = "bordered"},

  statusline = {
    theme = "minimal",
    separator_style = "block",
  },

  tabufline = {
    show_numbers = true,
    enabled = true,
    lazyload = false,
  },

  cmp = {
    style = "atom_colored"
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
