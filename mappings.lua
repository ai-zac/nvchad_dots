---@type MappingsTable
local M = {}


M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}


M.diagnostic = {
  n = {
    ["<F2>"] = {
      ":lua vim.diagnostic.open_float(nil, {focus=true})<CR>",
    },
  },
}


M.tabs = {
  n = {
    ["<leader>tn"] = {
      ":tabnew<CR>",
    },

    ["<leader>tc"] = {
      ":tabclose<CR>",
    },

    ["<A-tab>"] = {
      ":tabNext<cr>",
      "goto next tab",
    },

    ["<A-q>"] = {
      ":tabprevious<CR>",
      "goto prev tab",
    },
  },
}


M.buffers = {
  n = {
    ["<leader>bb"] = {
      ":bn<CR>",
    },
  },
}


M.git = {
  n = {
    ["<leader>g"] = {
      ":Telescope git_",
    },
  },
}


M.nvterm = {
  n = {
    ["<C-A-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
    },
  },

  t = {
    ["<C-A-h>"] = {
      function()
        require("nvterm.terminal").toggle "horizontal"
      end,
    },
  },
}

return M
