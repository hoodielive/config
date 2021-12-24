-- Plugin configurations.

-- TODO Figure out a way to make sure
-- packer.nvim is installed before launching
-- corresponding configurations.
require 'plugs'

-- Fundamentals settings.
require 'options'

-- Keybinding configurations.
require 'bindings'

-- Themer.
require 'egun-theme'

-- Dashboard.
require 'egun-dashboard'

-- Completion for lsp.
require 'egun-completion'

-- LSP configuration files.
require 'egun-lsp'

-- Snippet support.
require 'egun-vsnip'

-- Color in hexidecimal form.
require 'egun-colorizer'

-- GalaxyLine is cool for now.
require 'egun-galaxyline'

-- Nvim-Tree (lua)
require 'egun-nvimtree'

-- Make finding stuff easier.
require 'egun-telescope'

-- Configure Floating term.
require 'egun-floaterm'

-- TreeSitter configs.
require 'egun-treesitter'

-- Autopairs.
require 'egun-autopairs'

-- Gitsigns.
require 'egun-gitsigns'

-- Bufferline.
require 'egun-bufferline'

-- NeoScrollus
require 'egun-neoscroll'

-- Which-key
require 'egun-whichkey'

-- Give me pretty lsp help.
require 'egun-lspsaga'
