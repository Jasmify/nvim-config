local caps = require("lsp.capabilities").capabilities

vim.lsp.config("gopls", {
    capabilities = caps,
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                shadow = true,
                nilness = true,
                unusedwrite = true,
                useany = true,
            },
            staticcheck = true,
            gofumpt = true,

            completeUnimported = true,
            usePlaceholders = true,

            hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = false,
                rangeVariableTypes = true,
            },
        },
    },
})

vim.lsp.enable("gopls")

vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        print("BufWritePre triggered.")
        vim.lsp.buf.format({
            async = false,
            filter = function(client)
                return client.name == "gopls"
            end,
        })
    end,
})
