return {
    -- the current theme is nordic.
    {
        'AlexvZyl/nordic.nvim',
        name = 'nordic',
        lazy = false,
        priority = 1000,
        config = function()
            require 'nordic'.load()
        end
    },
    {'catppuccin/nvim', name = 'catppuccin', priority = 1000},
    {'nordtheme/vim', name = 'nord', priority = 1000},
}
