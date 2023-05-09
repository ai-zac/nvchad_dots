local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities
capabilities.textDocument.completion.completionItem.snippetSupport = true

local lspconfig = require("lspconfig")

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- 
-- lspconfig.pyright.setup { blabla}
lspconfig.html.setup {
  filetypes = {"html", "htmldjango"},
  capabilities = capabilities,
  init_options = {
    configurationSection = { "html", "css", "javascript", "htmldjango" },
    embeddedLanguages = {
      css = true,
      javascript = true
    },
    provideFormatter = true
  },
  cmd = {
    "vscode-html-language-server",
    "--stdio"
  },
}

vim.diagnostic.config({
  virtual_text = false,
})

vim.o.updatetime = 250
