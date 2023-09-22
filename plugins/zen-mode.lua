local M = {
  require 'zen-mode'.setup {
    window = {
      options = {
        signcolumn = "yes",
      }
    },
    plugins = {
      options = {
        ruler = true,
        showcmd = true,
      },
    },
  }
}

return M
