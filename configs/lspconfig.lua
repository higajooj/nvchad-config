local capabilities = require("plugins.configs.lspconfig").capabilities
local on_attach = require("plugins.configs.lspconfig").on_attach

local lspconfig = require "lspconfig"
local servers = {
  "tsserver",
  "solargraph",
  "pyright",
  "prismals",
  "rust_analyzer"
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

local M = {}

M.on_attach = on_attach

return M