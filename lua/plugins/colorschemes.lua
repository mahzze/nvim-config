return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		config = function()
			require("kanagawa").load()
		end,
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
}
