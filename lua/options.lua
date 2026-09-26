-- Basic UI settings
vim.o.guicursor = "a:block"
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.termguicolors = true
vim.o.wrap = false
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.swapfile = false
vim.g.mapleader = " "
vim.o.winborder = "rounded"
vim.o.cmdheight = 0
vim.o.showtabline = 0
vim.o.foldmethod = "manual"
vim.o.scrolloff = 5
vim.o.colorcolumn = "101"
-- Reload files changed outside of Neovim (agents, formatters, git, ...)
vim.o.autoread = true
-- Sync with system clipboard
vim.opt.clipboard = "unnamedplus"

vim.opt.list = true
vim.opt.fillchars = { eob = " " }
vim.o.laststatus = 3
vim.o.statusline = "%f %h%m%r%=%-14.(%l,%c%V%) %P"

-- Search and Completion
vim.o.wildmenu = true
vim.opt.wildmode = { "longest:full", "full" }
vim.opt.wildignore = { "*.pyc", "*_build/*", "**/node_modules/*", "**/target/*", "**.git/*" }
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true

-- Native insert completion
vim.opt.completeopt = { "menuone", "noselect" }

-- Performance
vim.cmd("set ttyfast")
vim.cmd("set lazyredraw")
