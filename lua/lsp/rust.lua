local caps = require("lsp.capabilities").capabilities

vim.lsp.config("rust_analyzer", {
    capabilities = caps,
    settings = {
        ["rust_analyzer"] = {
            cargo = {
                allFeatures = true,
            },
            checkOnSave = {
                command = "clippy",
            },
            procMacro = {
                enable = true,
            },
            inlayHints = {
                typeHints = true,
                parameterHints = false,
                chainingHints = true,
            },
            completion = {
                autoimport = false,
                autoImportCompletions = false,
            },
        },
    },
})

vim.lsp.enable("rust_analyzer")
