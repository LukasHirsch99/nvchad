local configs = require "plugins.configs.lspconfig"
local on_attach = configs.on_attach
local capabilities = configs.capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "clangd", "denols", "pyright" }
local util = require("lspconfig/util")

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = { "gopls"},
  filetypes = {"go", "gomod", "gowork", "gotmpl"},
  root_dir = util.root_pattern("go.work", "go.mod", ".git")
}

lspconfig["volar"].setup {
  filetypes = { "typescript", "javascript", "javascriptreact", "typescriptreact", "vue", "json" },
  init_options = {
    typescript = {
      tsdk = "/Users/lukas/.nvm/versions/node/v21.6.1/lib/node_modules/typescript/lib",
      -- Alternative location if installed as root:
      -- tsdk = '/usr/local/lib/node_modules/typescript/lib'
    },
  },
}

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
