local bufferline = require('bufferline')
local M = {
  bufferline.setup {
    options = {
      mode = "buffers", -- set to "tabs" to only show tabpages instead
      style_preset = bufferline.style_preset.minimal, -- or bufferline.style_preset.minimal,
      themable = true, -- allows highlight groups to be overriden i.e. sets highlights as default
      numbers = "buffer_id",
      indicator = {
        icon = '▎', -- this should be omitted if indicator style is not 'icon'
        style = 'icon',
      },
      buffer_close_icon = '󰅖',
      modified_icon = '●',
      close_icon = '',
      left_trunc_marker = '',
      right_trunc_marker = '',
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local s = " "
        for e, n in pairs(diagnostics_dict) do
          local sym = e == "error" and " "
            or (e == "warning" and " " or "" )
          s = s .. n .. sym
        end
        return s
      end,
    }
  }
}

return M
