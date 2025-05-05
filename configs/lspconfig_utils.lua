local M = {}

local default_config = require("nvchad.configs.lspconfig")

M.on_attach = default_config.on_attach
M.capabilities = default_config.capabilities

return M