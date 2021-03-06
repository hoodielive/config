-- I am just going to follow the defaults for now.
-- They all seem so very cool :)
-- :help nvim-tree.OPTION_NAME for more info.

require'nvim-tree'.setup
{
  -- Disables netrw completely.

  disable_netrw       = true,

  -- Hijack netrw window at startup.

  hijack_netrw        = true,

  -- Open the tree when when running setup function.

  open_on_setup       = false,

  -- Will not open a setup if the ft is in this list.

  ignore_ft_on_setup  = {},

  -- Closes Neovim automatically when the tree is the last
  -- WINDOW in the view.

  auto_close          = false,

  -- Opens the tree when opening a new tab if it wasn't
  -- already open.

  open_on_tab         = false,
  hijack_cursor       = false,
  update_cwd          = false,
  update_to_buf_dir   = {
    enable = true,
    auto_open = true,

  },

  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },

  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },

  system_open = {
    cmd  = nil,
    args = {}
  },

  filters = {
    dotfiles = false,
    custom = {}
  },

  git = {
    enable = true,
    ignore = true,
    timeout = 500,
  },

  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    auto_resize = false,
    mappings = {
      custom_only = false,
      list = {}
    },

    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },

  trash = {
    cmd = "trash",
    require_confirm = true
  }
}

-- Closes tree when you open a file.

vim.g.nvim_tree_quit_on_open = 1


vim.g.nvim_tree_indent_markers = 1

vim.g.nvim_tree_git_h1 = 1

vim.g.nvim_tree_highlight_opened_files = 1

vim.g.nvim_tree_root_folder_modifier = ':~'

--0 by default, append a trailing slash to folder names.

vim.g.nvim_tree_add_trailing = 1

-- 0 by default, compact folders that only contain a single folder into one node in the file tree.

vim.g.nvim_tree_group_empty = 1

-- 0 by default, will disable the window picker.

vim.g.nvim_tree_disable_window_picker = 1

-- One space by default, used for rendering the space between the icon and the filename. Use with caution, it could break rendering if you set an empty string depending on your font.

vim.g.nvim_tree_icon_padding = ' '

-- Defaults to ' ➛ '. used as a separator between symlinks' source and target.

vim.g.nvim_tree_symlink_arrow = ' >> '

-- 0 by default, will change cwd of nvim-tree to that of new buffer's when opening nvim-tree.

vim.g.nvim_tree_respect_buf_cwd = 1

-- 1 by default, When creating files, sets the path of a file when cursor is on a closed folder to the parent folder when 0, and inside the folder when 1.

vim.g.nvim_tree_create_in_closed_folder = 0

-- 1000 by default, control how often the tree can be refreshed, 1000 means the tree can be refresh once per 1000ms.

vim.g.nvim_tree_refresh_wait = 500

vim.g.nvim_tree_window_picker_exclude = {
   filetype = {
     'notify',
     'packer',
     'qf'
   },

   buftype = {
     'terminal'
   }
}

-- Dictionary of buffer option names mapped to a list of option values that
-- indicates to the window picker that the buffer's window should not be
-- selectable.

-- List of filenames that gets highlighted with NvimTreeSpecialFile
-- vim.g.nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 }

vim.cmd [[ let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } ]]

vim.g.nvim_tree_show_icons = {
    git = 1,
    folders = 0,
    files = 0,
    folder_arrows = 0,
}

-- If 0, do not show the icons for one of 'git' 'folder' and 'files'
-- 1 by default, notice that if 'files' is 1, it will only display
-- if nvim-web-devicons is installed and on your runtimepath.
-- if folder is 1, you can also tell folder_arrows 1 to show small arrows next to the folder icons.
-- but this will not work when you set indent_markers (because of UI conflict)
--  Default will show icon by default if no icon is provided
--  Default shows no icon by default

vim.g.nvim_tree_icons = {
  default = '',
  symlink = '',

  git = {
    unstaged = '✗',
    staged = '✓',
    unmerged = '',
    renamed = '➜',
    untracked = '★',
    deleted = '',
    ignored = '◌'
    },

  folder = {
    arrow_open = '',
    arrow_closed = '',
    default = '',
    open = '',
    empty = '',
    empty_open = '',
    symlink = '',
    symlink_open = '',
   },
}



map('n', '<Leader>e', ':NvimTreeToggle<CR>', {})

-- nnoremap <leader>r :NvimTreeRefresh<CR>
-- nnoremap <leader>n :NvimTreeFindFile<CR>

-- NvimTreeOpen,
-- NvimTreeClose,
-- NvimTreeFocus,
-- NvimTreeFindFileToggle,
-- and NvimTreeResize are also available if you need them.


-- This variable must be enabled for colors to be applied properly
-- set termguicolors
vim.opt.termguicolors = true


-- a list of groups can be found at `:help nvim_tree_highlight`

vim.cmd 'highlight NvimTreeFolderIcon guibg=blue'


local tree_cb = require'nvim-tree.config'.nvim_tree_callback

-- default mappings
local list = {
  { key = {"<CR>", "o", "<2-LeftMouse>"}, cb = tree_cb("edit") },
  { key = {"<2-RightMouse>", "<C-]>"},    cb = tree_cb("cd") },
  { key = "<C-v>",                        cb = tree_cb("vsplit") },
  { key = "<C-x>",                        cb = tree_cb("split") },
  { key = "<C-t>",                        cb = tree_cb("tabnew") },
  { key = "<",                            cb = tree_cb("prev_sibling") },
  { key = ">",                            cb = tree_cb("next_sibling") },
  { key = "P",                            cb = tree_cb("parent_node") },
  { key = "<BS>",                         cb = tree_cb("close_node") },
  { key = "<S-CR>",                       cb = tree_cb("close_node") },
  { key = "<Tab>",                        cb = tree_cb("preview") },
  { key = "K",                            cb = tree_cb("first_sibling") },
  { key = "J",                            cb = tree_cb("last_sibling") },
  { key = "I",                            cb = tree_cb("toggle_ignored") },
  { key = "H",                            cb = tree_cb("toggle_dotfiles") },
  { key = "R",                            cb = tree_cb("refresh") },
  { key = "a",                            cb = tree_cb("create") },
  { key = "d",                            cb = tree_cb("remove") },
  { key = "D",                            cb = tree_cb("trash") },
  { key = "r",                            cb = tree_cb("rename") },
  { key = "<C-r>",                        cb = tree_cb("full_rename") },
  { key = "x",                            cb = tree_cb("cut") },
  { key = "c",                            cb = tree_cb("copy") },
  { key = "y",                            cb = tree_cb("copy_name") },
  { key = "Y",                            cb = tree_cb("copy_path") },
  { key = "gy",                           cb = tree_cb("copy_absolute_path") },
  { key = "[c",                           cb = tree_cb("prev_git_item") },
  { key = "]c",                           cb = tree_cb("next_git_item") },
  { key = "-",                            cb = tree_cb("dir_up") },
  { key = "s",                            cb = tree_cb("system_open") },
  { key = "q",                            cb = tree_cb("close") },
  { key = "g?",                           cb = tree_cb("toggle_help") },
}
