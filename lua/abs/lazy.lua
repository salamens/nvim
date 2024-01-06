local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope.nvim',
	"mbbill/undotree",
	{ 
		"scottmckendry/cyberdream.nvim",
		config = function()
			require("cyberdream").setup({
				transparent = true,
				italic_comments = true,
				hide_fillchars = true,
				borderless_telescope = true,
			})
		end,
		
	},
})
