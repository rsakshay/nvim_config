local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "ak56.lsp.configs"
require("ak56.lsp.handlers").setup()
require "ak56.lsp.null-ls"
