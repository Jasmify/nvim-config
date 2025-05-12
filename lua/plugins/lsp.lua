return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = true,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      require("mason-lspconfig").setup({
        ensure_installed = {
          "rust_analyzer",
          "svelte",
          "tailwindcss",
        },
        handlers = {
          rust_analyzer = function()
            require("lspconfig").rust_analyzer.setup({
              capabilities = capabilities,
              settings = {
                ["rust-analyzer"] = {
                  checkOnSave = { command = "clippy" },
                  cargo = { allFeatures = true },
                  procMacro = { enable = true },
                  inlayHints = {
                    typeHints = true,
                    parameterHints = true,
                    chainingHints = true,
                  },
                },
              },
            })
          end,

          svelte = function()
            require("lspconfig").svelte.setup({
              capabilities = capabilities,
            })
          end,

          tailwindcss = function()
            require("lspconfig").tailwindcss.setup({
              capabilities = capabilities,
            })
          end,

          -- fallback: それ以外のLSP（あれば）
          function(server_name)
            require("lspconfig")[server_name].setup({
              capabilities = capabilities,
            })
          end,
        },
      })

      -- 診断表示の設定（共通）
      vim.diagnostic.config({
        virtual_text = true,
        signs = true,
        underline = true,
        update_in_insert = false,
      })
    end,
  },
}

