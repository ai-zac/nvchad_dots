---@type MappingsTable
local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Toggle breakpoint",
    },
  },
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require("dap-python").test_method()
      end
    }
  }
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<leader>f"] = {
      ":lua vim.diagnostic.open_float() <CR>",
      "open float diagnostic",
    },
  },
}

M.lspconfig = {
  n = {
    ["gd"] = {
      ":Telescope lsp_definitions<CR>",
      "LSP definition",
    },

    ["gi"] = {
      ":Telescope lsp_implementations<CR>",
      "LSP implementations",
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
      "Fixed: Goto next buffer",
    },
    ["<S-Tab>"] = {
      ":bp<CR>",
      "Fixed: Goto prev buffer",
    },
    ["<leader>x"] = {
      ":<C-U>bprevious <bar> bdelete #<CR>",
      "Fixed: Close buffer and show another",
    },
    ["<leader>xc"] = {
      ":bdelete<CR>",
      "Fixed: Close buffer",
    },
  },
}

M.telescope = {
  n = {
    ["<leader>g"] = {
      ":Telescope git_",
    },
  },
}

return M
