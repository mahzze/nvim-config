return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = {
		{ "<leader>pf", "<cmd>Telescope find_files<cr>", desc = "find files" },
		{
			"<leader>ps",
			function()
				require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
			end,
			desc = "grep text from file",
		},
		{ "<C-p>", "<cmd>Telescope git_files<cr>", desc = "find git files" },
	},
}
