local presence = require("presence").setup()

presence.setup({
  auto_update = true,
  neovim_image_text = "A procastinator",
  main_image = "https://i.ytimg.com/vi/8dVQ0813KVM/hqdefault.jpg",
  log_level = "debug",
  debounce_timeout = 2,
  enable_line_number = false,
  blacklist = {},

  -- Configure Rich Presence button(s), either a boolean to enable/disable, a static table (`{{ label = "<label>", url = "<url>" }, ...}`, or a function(buffer: string, repo_url: string|nil): table)
  buttons = false,
  file_assets = {},
  show_time = true,

  -- Rich Presence text options
  editing_text = "Editing %s",
  file_explorer_text = "Browsing %s",
  git_commit_text = "Committing changes",
  plugin_manager_text = "Managing plugins",
  reading_text = "Reading %s",
  workspace_text = "📁 %s",
  line_number_text = "Line %s/%s",
})
