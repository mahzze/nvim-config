return {
	"fatih/vim-go",
	event = { "BufReadPre", "BufNewFile" },
	keys = {
		{ "<leader>lg", ":GoAddTags json", desc = "golang: add json tags" },
	},
	init = function()
		vim.cmd("let g:go_doc_popup_window=1")
	end,
}
