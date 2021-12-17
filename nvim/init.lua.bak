-- Vars

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
opt.completeopt = 'menuone,noselect'

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

-- Install packer.nvim as our plugin manager.
-- There are however others that are a bit more minimal e.g. paq-nvim.
-- You could however continue to use vim-plug.

local execute = vim.api.nvim_command
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

vim.cmd [[packadd packer.nvim]]
vim.api.nvim_exec([[
  augroup Packer
    autocmd!
    autocmd BufWritePost plugins.lua PackerCompile
  augroup end
]], false)

local use = require('packer').use
require('packer').startup(function()
  
  use {
    'wbthomason/packer.nvim', 
     opt = true
  }

  -- Auto close delimiters
  use 'kana/vim-smartinput' 
  use 'tpope/vim-commentary'
  use {'nvim-telescope/telescope.nvim', 
    requires = {{'nvim-lua/popup.nvim'}, 
               {'nvim-lua/plenary.nvim'}} 
  }
  use 'joshdick/onedark.vim'
  use 'itchyny/lightline.vim'
  use 'neovim/nvim-lspconfig'

  -- Provides autocompletion and is completely 
  -- written in lua.
  use 'hrsh7th/nvim-cmp'

  -- Snippet Engine
  use 'sirver/ultisnips'

  -- The actual snippets
  use 'honza/vim-snippets' -- the coal (the actuall snippets)

  -- TreeSitter.
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'ojroques/nvim-lspfuzzy',
    requires = {
      {'junegunn/fzf'},
      {'junegunn/fzf.vim'},  -- to enable preview (optional)
    },
  }

  -- Lua implementation of fzf
  use {
    'ibhagwan/fzf-lua',
    -- icon support
    requires = { 'kyazdani42/nvim-web-devicons' }
  }

  -- Support support.
  use 'williamboman/nvim-lsp-installer'

  -- Color Schemes.

  use 'dracula/vim'
  use 'daylerees/colour-schemes'
  use 'morhetz/gruvbox'
  use 'Shatur/neovim-ayu'
  use 'tyrannicaltoucan/vim-deep-space'
  use 'haystackandroid/snow'
  -- Read the doco as their
  -- are various params that 
  -- make this plug even more cool.
  use 'junegunn/seoul256.vim'

  -- Ranger Support.
  use 'kevinhwang91/rnvimr'

  -- Surround me and change me.
  use 'tpope/vim-surround'

  -- Git Integration.
  use 'mhinz/vim-signify'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'junegunn/gv.vim'
 
  -- Orgmode.
  use 'axvr/org.vim'

  -- A Zen mode for Writing.
  use 'junegunn/goyo.vim'

  -- And limelight for hyper-focus.
  use 'junegunn/limelight.vim'
end)

-- Configure Themes.
opt.termguicolors = true
opt.background = 'dark'

-- Present color scheme.
cmd 'colorscheme ayu-dark'

require('ayu').setup({
  mirage = true,
  overrides = {},
})

-- g.lightline.colorscheme = {'deepspace'}

-- Keybindings.

-- You will use jj to esc while in insert mode.
keymap('i', 'jj', '<ESC>', opts)
keymap('n', '<C-L>', ':nohl<CR><C-L>', opts)

g.rnvimr_ex_enable = 1
keymap("n", "<space>r", ":RnvimrToggle<CR>", opts)

-- Configure FZF.
keymap('n', '<c-P>', "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })


-- Configure treesitter.
local ts = require 'nvim-treesitter.configs'
ts.setup {
  ensure_installed = 'maintained', 
  highlight = { enable = true }, 
  indent = { enable = true}
}

-- Briefly highlight a yanked line.
-- But disable in visual mode.
cmd 'au TextYankPost * lua vim.highlight.on_yank { on_visual = false }'

-- LSP server configurations.
local lspconfig = require "lspconfig"
lspconfig.rust_analyzer.setup {on_attach = on_attach}
lspconfig.ccls.setup { on_attach = on_attach }

