local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig["dartls"].setup {
  on_attach = on_attach,
  settings = {
    dart = {
      analysisExcludedFolders = {
        vim.fn.expand "$HOME/.pub-cache",
        vim.fn.expand "$HOME/flutter",
      },
    },
  },
}
