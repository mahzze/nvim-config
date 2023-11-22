return {
    "nvim-treesitter/nvim-treesitter",
    event = {"BufReadPre", "BufNewFile"},
    build = ":TSUpdate",

    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true
            },
            indent = {
                enable = true,
            },
            ensure_installed = {
                "javascript",
                "typescript",
                "go",
                "html",
            },
            auto_install = {
                enable = true,
            },
        })
    end
}
