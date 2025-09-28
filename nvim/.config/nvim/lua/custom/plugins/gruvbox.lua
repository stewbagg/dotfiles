return {
	'ellisonleao/gruvbox.nvim',
	priority = 1000,
	init = function()
		require('gruvbox').setup {
			transparent_mode = true,
		}
		vim.o.background = "dark"
		vim.cmd.colorscheme 'gruvbox'
		vim.cmd.hi 'Comment gui=none'
	end
}
