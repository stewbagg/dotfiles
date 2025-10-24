return {
	"ellisonleao/gruvbox.nvim",
	init = function()
		require("gruvbox").setup({
			dim_inactive = true,
			transparent_mode = true,
		})
		-- TODO: how to make CMP completion menu, Mason, and Lazy have
		-- transparent backgrounds like neovim and figet.
		vim.cmd.colorscheme("gruvbox")
		vim.o.pumblend = 0
		vim.o.winblend = 0
	end,
}
