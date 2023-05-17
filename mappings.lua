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
      ":lua vim.diagnostic.open_float { border = 'rounded' }<CR>",
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
    ["<Tab>"] = {
      ":bn<CR>",
      "Fixed: Goto next buffer"
    },
    ["<S-Tab>"] = {
      ":bp<CR>",
      "Fixed: Goto prev buffer"
    },
    ["<leader>x"] = {
      ":<C-U>bprevious <bar> bdelete #<CR>",
      "Fixed: Close buffer and show another"
    },
    ["<leader>xc"] = {
      ":bdelete",
      "Fixed: Close buffer"
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
