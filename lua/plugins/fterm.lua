return {
    "numToStr/FTerm.nvim",
    config = {
        border = 'double',
        dimensions  = {
            height = 0.9,
            width = 0.9,
        },
    },
    keys = function()
        return {
            {"<A-i>", "<cmd>lua require('FTerm').toggle()<cr>", desc = "Open terminal"},
            {"<A-i>", "<C-\\><C-n><cmd>lua require('FTerm').toggle()<cr>", mode = "t", desc = "Close terminal keeping the session"},
         }
     end
}
