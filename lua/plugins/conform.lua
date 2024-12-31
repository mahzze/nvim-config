return {
    'stevearc/conform.nvim',
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local conform = require("conform")
        conform.setup({
            formatters_by_ft = {
                javascript = { "prettier" },
                typescript = { "prettier" },
                javascriptreact = { "prettier" },
                typescriptreact = { "prettier" },
                go = {"gofmt"},
                lua = { "stylua" },
            },
            format_on_save = {
                lsp_fallback = false,
                async = false,
                timeout_ms = 250,
            }
        })
        vim.keymap.set({ "n", "v" }, "<leader>ff", function()
            conform.format({
                lsp_fallback = true,
                async = false,
                timeout_ms = 250,
            })
        end, { desc = "Format" })
    end
}
