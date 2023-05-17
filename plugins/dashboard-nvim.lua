local M = {
require 'dashboard'.setup {
-- config
    theme = 'hyper',
    config = {
      week_header = {
        enable = true,
      },
      shortcut = {
        { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'd',
        },

        {
          desc = '\u{F1D3} status ',
          group = 'Git',
          action = 'Telescope git_status',
          key = 'g',
        },

        {
          desc = '\u{F09B} commits ',
          group = 'Git',
          action = 'Telescope git_commits',
          key = 'f',
        },
      },
    },
  }
}

return M
