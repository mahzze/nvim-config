return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = function()
         return {
            {'<leader>pf', '<cmd>Telescope find_files<cr>', desc = "find files"},
            {'<leader>ps', '<cmd>Telescope grep_string<cr>', desc = "grep text from file"},
            {'<C-p>', '<cmd>Telescope git_files<cr>', desc = "find git files"},
        }
    end
}
