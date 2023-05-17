-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.opt.breakindent = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
-- vim.cmd [[ colorscheme themer_gruvbox]]
-- vim.cmd([[
--   augroup COLOR
--     autocmd!
--     autocmd ColorScheme	* colorscheme themer_gruvbox
--   augroup END
-- ]])
