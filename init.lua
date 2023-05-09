-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
vim.opt.breakindent = true
vim.opt.relativenumber = true
-- vim.cmd([[
--   augroup TRANSPARENT_BG
--     autocmd!
--     autocmd VimEnter * highlight Normal ctermbg=NONE guibg=NONE
--   augroup END
-- ]])
