return {
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local opts = {noremap = true, silent = true,}
        local on_attach = function(client, bufnr)
            opts.buffer = bufrn
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition(), opts)
            vim.keymap.set('n', 'K', vim.lsp.buf.hover(), opts)
            vim.keymap.set('n', '[d', vim.diagnostic.goto_prev(), opts)
            vim.keymap.set('n', ']d', vim.diagnostic.goto_next(), opts)
            vim.keymap.set('n', '<leader>vd', vim.diagnostic.open_float(), opts)
            vim.keymap.set('n', '<leader>vws', vim.lsp.buf.workspace_symbol(), opts)
            vim.keymap.set('n', '<leader>vca',  vim.lsp.buf.code_action(), opts)
            vim.keymap.set('n', '<leader>vrr', vim.lsp.buf.references(), opts)
            vim.keymap.set('n', '<leader>vrn', vim.lsp.buf.rename(), opts)
            vim.keymap.set('i', '<C-h>', vim.lsp.buf.signature_help(), opts)
        end
        local capabilities = cmp_nvim_lsp.default_capabilities()
        
        lspconfig["gopls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["html"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["tsserver"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["cssls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
        })

        lspconfig["emmet_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
        })

        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = on_attach,
            settings = { -- custom settings for lua
                Lua = {
                    -- make the language server recognize "vim" global
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        -- make language server aware of runtime files
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })
    end 
}
