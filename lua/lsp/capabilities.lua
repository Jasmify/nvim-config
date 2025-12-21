local M = {}

M.capabilities = vim.lsp.protocol.make_client_capabilities()

local ok, cmp = pcall(require, "cmp_nvim_lsp")
if ok then
    M.capabilities = cmp.default_capabilities(M.capabilities)
end

return M
