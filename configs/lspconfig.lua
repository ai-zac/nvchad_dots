local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities
capabilities.textDocument.completion.completionItem.snippetSupport = true

local lspconfig = require "lspconfig" 
local servers = { "html", "cssls", "clangd", "tsserver", "pyright" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.pyright.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  single_file_support = true,
  settings = {
    python = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
      },
    },
  },
}

lspconfig.html.setup {
  filetypes = { "html", "htmldjango" },
  capabilities = capabilities,
  init_options = {
    configurationSection = { "html", "css", "javascript", "htmldjango" },
    embeddedLanguages = {
      css = true,
      javascript = true,
    },
    provideFormatter = true,
  },
  cmd = {
    "vscode-html-language-server",
    "--stdio",
  },
}

vim.diagnostic.config {
  underline = true,
  signs = true,
  virtual_text = false,
  float = {
    show_header = true,
    source = "if_many",
    border = "rounded",
    focusable = false,
  },
  update_in_insert = false,
  severity_sort = false,
}

vim.o.updatetime = 250
