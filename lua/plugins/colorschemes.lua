return {
	{
		"rebelot/kanagawa.nvim",
	},
	{
		"AlexvZyl/nordic.nvim",
		name = "nordic",
		lazy = false,
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
		"nordtheme/vim",
		name = "nord",
	},
	{
		"Shadorain/shadotheme",
		name = "shado",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("shado")
		end,
	},
}
