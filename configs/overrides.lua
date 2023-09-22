local M = {}

M.treesitter = {
  ensure_installed = {
    "javascript",
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
    "python",
  },
  indent = {
    enable = true,
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "cssmodules-language-server",
    "typescript-language-server",
    "prettier",
    "deno",
    "rome",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- python
    "pyright",
    "ruff",
    "black",
    "debugpy",
  },
}

M.nvimtree = {
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
}

return M
