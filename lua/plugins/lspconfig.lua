return {
    "neovim/nvim-lspconfig",
    -- dependencies = {
    -- "mason-org/mason.nvim",
    -- { "mason-org/mason-lspconfig.nvim", config = function() end },
    -- },
    --
    -- config = function()
    --     -- import lspconfig plugin
    --     local lspconfig = require("lspconfig")
    --     local util = require("lspconfig.util")
    --
    --     -- Change the Diagnostic symbols in the sign column (gutter)
    --     -- (not in youtube nvim video)
    --     local signs =
    --         { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    --     for type, icon in pairs(signs) do
    --         local hl = "DiagnosticSign" .. type
    --         vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    --     end
    --
    --     lspconfig.gopls.setup({
    --         lspconfig["gopls"].setup({
    --             cmd = { "gopls" },
    --             filetypes = { "go", "gomod", "gowork", "gotmpl" },
    --             root_dir = util.root_pattern("go.work", "go.mod", ".git"),
    --             settings = {
    --                 gopls = {
    --                     completeUnimported = true,
    --                     usePlaceholders = true,
    --                     analyses = {
    --                         unusedparams = true,
    --                     },
    --                     buildFlags = { "-tags=test" },
    --                 },
    --             },
    --         }),
    --     })
    --
    --     -- import mason_lspconfig plugin
    --     require("mason-lspconfig").setup()
    --
    -- end,
    opts = {
        servers = {
            gopls = {
                settings = {
                    gopls = {
                        -- gofumpt = true,
                        -- codelenses = {
                        --     gc_details = false,
                        --     generate = true,
                        --     regenerate_cgo = true,
                        --     run_govulncheck = true,
                        --     test = true,
                        --     tidy = true,
                        --     upgrade_dependency = true,
                        --     vendor = true,
                        -- },
                        -- hints = {
                        --     assignVariableTypes = true,
                        --     compositeLiteralFields = true,
                        --     compositeLiteralTypes = true,
                        --     constantValues = true,
                        --     functionTypeParameters = true,
                        --     parameterNames = true,
                        --     rangeVariableTypes = true,
                        -- },
                        analyses = {
                            -- nilness = true,
                            -- unusedparams = true,
                            -- unusedwrite = true,
                            -- useany = true,
                        },
                        buildFlags = { "-tags=test" },

                        usePlaceholders = true,
                        -- completeUnimported = true,
                        -- staticcheck = true,
                        directoryFilters = {
                            "-.git",
                            "-.vscode",
                            "-.idea",
                            "-.vscode-test",
                            "-node_modules",
                        },
                        -- semanticTokens = true,
                    },
                },
            },
        },
        -- setup = {
        --     gopls = function(_, opts)
        --         -- workaround for gopls not supporting semanticTokensProvider
        --         LazyVim.lsp.on_attach(function(client, _)
        --             if
        --                 not client.server_capabilities.semanticTokensProvider
        --             then
        --                 local semantic =
        --                     client.config.capabilities.textDocument.semanticTokens
        --                 client.server_capabilities.semanticTokensProvider = {
        --                     full = true,
        --                     legend = {
        --                         tokenTypes = semantic.tokenTypes,
        --                         tokenModifiers = semantic.tokenModifiers,
        --                     },
        --                     range = true,
        --                 }
        --             end
        --         end, "gopls")
        --         -- end workaround
        --     end,
        -- },
    },
}
