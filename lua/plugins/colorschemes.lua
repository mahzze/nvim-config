return {
    {
        "rebelot/kanagawa.nvim",
    },
    {
        "AlexvZyl/nordic.nvim",
        name = "nordic",
    },
    {
        "sainnhe/everforest",
        name = "everforest",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("everforest")
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
    },
    {
        "EdenEast/nightfox.nvim",
        name = "nightfox",
    },
    {
        "nordtheme/vim",
        name = "nord",
    },
    {
        "Shadorain/shadotheme",
        name = "shado",
    },
}
