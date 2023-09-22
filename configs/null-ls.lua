local null_ls = require "null-ls"

local builtin = null_ls.builtins

local sources = {
  -- python
  builtin.diagnostics.ruff,
  builtin.formatting.black,

  -- webdev stuff
  builtin.formatting.deno_fmt,
  builtin.formatting.prettier.with { filetypes = { "html", "markdown", "css" } },

  -- Lua
  builtin.formatting.stylua,
  builtin.formatting.clang_format,

  -- cpp
  builtin.formatting.shfmt.with {
    {
      extra_args = function(params)
        return { "-i", vim.api.nvim_buf_get_option(params.bufnr, "shiftwidth") }
      end,
    },
  },
}

null_ls.setup {
  debug = true,
  sources = sources,
}
