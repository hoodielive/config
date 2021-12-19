
-- Technique/Regex for replacing vim comments
-- with Lua comments: %s/(^| )"(.+)/--\2
-- start of line or blank space followed by a quote
-- followed by other stuff of something else it was followed by.

-- A table to access global variables.
local g = vim.g

-- Botright.
local bo = vim.bo

-- Call Vim functions.
local fn = vim.fn

-- 
local wo = vim.wo

-- Execute Vim commands e.g. cmd('pwd')
local cmd = vim.cmd

-- Set Vim options.
local opt = vim.opt

-- Shortcut for setting mappings.
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

-- Search these paths.
opt.path = vim.opt.path + '.,**'

-- Rebind the mapleader key
vim.g.mapleader = ' '

-- Set indentation rules.
opt.expandtab = true
opt.shiftwidth = 2
opt.softtabstop = 2
opt.shiftround = true

-- Sounds like something I want to use lol.
opt.wildmode = 'longest:list,full'

-- Show me invisible characters.
opt.list = true

-- TODO Make these beautiful with hack fonts.
opt.listchars = 'tab:▸ ,trail:·' 

-- Maintain indent of current line.
opt.autoindent = true

-- Allow unrestricted backspacing in insert mode.
opt.backspace ='indent,start,eol'

-- Highlight current line.
opt.cursorline = false

-- Determine vim swap directory.
opt.directory = '/home/enilo/.config/nvim/swap//,.'

-- Show menu box even if there is only 1 option
-- However, do not automatically select it.
opt.completeopt = 'menu,menuone,noselect'

-- Shows the effects of a command incrementally.
opt.inccommand = 'nosplit'

-- Use a swap file for buffer.
opt.swapfile = true

-- Enable mouse support.
vim.cmd [[set mouse=a]]

-- Show relative column and character.
opt.ruler = true

-- Don't show me which mode I'm in. I'm grown.
opt.showmode = false

-- Show commands.
opt.showcmd = true

-- I'd like to have relative numbers.
opt.relativenumber = false

-- Sigh.
opt.laststatus = 2

-- No double spaces for . ?
opt.joinspaces = false

-- Ignore case.
opt.ignorecase = true
opt.incsearch = true
opt.hlsearch = true

-- Do not ignore case with capitals.
opt.smartcase = true

-- Persistent undo.
vim.undofile = true

-- Set scrolloff to 4 maybe 8.
opt.scrolloff = 4

-- When we split the screen it should go to the right below.
opt.splitright = true
opt.splitbelow = true

-- Ask me questions before you overwrite my shit.
opt.confirm = false

-- Show the title.
opt.title = true

-- Enable background buffers.
-- Make Me More Like Emacs.
opt.hidden = true

-- Directory.
opt.dir = '/tmp'

-- Configure Themes.
opt.termguicolors = true
opt.background = 'dark'

-- I don't ever want to hear any bells. E V E R!
opt.belloff = "all"

-- Briefly highlight a yanked line.
-- But disable in visual mode.
cmd 'au TextYankPost * lua vim.highlight.on_yank { on_visual = false }'

