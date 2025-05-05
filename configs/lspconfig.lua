-- ~/AppData/Local/nvim/lua/configs/lspconfig.lua

require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")
local util = require("lspconfig.util")

local utils = require("configs.lspconfig_utils")

local servers = { "html", "cssls" }

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = utils.on_attach,
    capabilities = utils.capabilities,
  }
end

lspconfig.gopls.setup {
  on_attach = utils.on_attach,
  capabilities = utils.capabilities,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.work", "go.mod", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      }
    }
  }
}
