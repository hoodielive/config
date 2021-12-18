-- Install packer.nvim as our plugin manager.

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
  use { 'glepnir/galaxyline.nvim',
        requires = 'kyazdani42/nvim-web-devicons' }
  use 'neovim/nvim-lspconfig'

  -- Provides autocompletion and is completely
  -- written in lua.
  use 'hrsh7th/nvim-cmp'

  -- Snippet Engine and Snippets
  use 'sirver/ultisnips'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use 'honza/vim-snippets'

  -- TreeSitter.
  use 'nvim-treesitter/nvim-treesitter'
  use {
    'ojroques/nvim-lspfuzzy',
    requires = 
    {
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
  use 'folke/tokyonight.nvim'
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

  -- Color Support.
  use 'norcalli/nvim-colorizer.lua'

  -- Float terminus.
  use 'voldikss/vim-floaterm'

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

  -- nvim-tree.lua will be our file explorer.
  use
  {
     'kyazdani42/nvim-tree.lua',
      requires =
      {
	'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
  }

  -- Autopairs.
  use 'windwp/nvim-autopairs'
  
  -- Sensible scrolling.
  use 'karb94/neoscroll.nvim'

  -- Bufferline.
  use 'akinsho/nvim-bufferline.lua'

  -- Gitsigns.
  use {'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' }}
end)
