return {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",

    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        mason_lspconfig.setup({
            ensure_installed = {
                "tsserver",
                "lua_ls",
                "emmet_ls",
                "html",
                "gopls",
            },
            automatic_installation = true,
        })
    end,
}
