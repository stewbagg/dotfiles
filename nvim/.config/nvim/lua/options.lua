-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Use nerd font
vim.g.have_nerd_font = true

-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = "a"

-- Don't show the mode, already in the status line
vim.opt.showmode = false

-- Sync clipboard between OS and nvim
vim.opt.clipboard = "unnamedplus"

-- Set tab and indent settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.autoindent = true
vim.o.smartindent = true
vim.opt.breakindent = true
vim.o.wrap = true
vim.o.linebreak = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how nvim will display certain whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live as you type
vim.opt.inccommand = "split"

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Min number of screen lines to keep above and below cursor
vim.opt.scrolloff = 10

-- Netrw settings
vim.g.netrw_winsize = -28
vim.g.netrw_banner = 0

-- Use terminal colors
vim.opt.termguicolors = true

-- Use block cursor
vim.opt.guicursor = "n-v-c-i-ci-ve-r-cr-o-sm:block"
