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
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("nordic")
        end,
    },
    {
        "Shadorain/shadotheme",
        name = "shado",
    },
}
