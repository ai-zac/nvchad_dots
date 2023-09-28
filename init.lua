vim.opt.breakindent = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.cursorcolumn = true
vim.opt.cursorline = true

local notify = vim.notify
vim.notify = function(msg, ...)
    if msg:match("warning: multiple different client offset_encodings") then
        return
    end

    notify(msg, ...)
end
