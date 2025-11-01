return {
    "neovim/nvim-lspconfig",
    config = function()
        vim.lsp.enable('clangd')
        vim.lsp.enable('lua_ls')
        vim.lsp.enable('gopls')
        vim.lsp.enable('ltex')
        vim.lsp.enable('html')
        vim.lsp.enable('htmx')
        vim.lsp.enable('pyright')
        end,
}
