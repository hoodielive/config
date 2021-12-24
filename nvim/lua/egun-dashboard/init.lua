-- Dashboard Settings

-- Fuzzy search options: clap, fzf, or telescope.
vim.g.dashboard_default_executive = 'telescope'

-- Custom Shortcuts.
vim.g.dashboard_custom_shortcut =
{
  last_session        = 'SPC s l',
  find_history        = 'SPC f h',
  find_file           = 'SPC f f',
  new_file            = 'SPC c n',
  change_colorscheme  = 'SPC t c',
  find_word           = 'SPC f a',
  book_marks          = 'SPC f b',
}

-- Dashboard Custom Shortcut Icons.
vim.g.dashboard_custom_shortcut_icon =
{
  last_session = ' ',
  find_history = 'ﭯ ',
  find_file = ' ',
  new_file = ' ',
  change_colorscheme = ' ',
  find_word = ' ',
  book_marks = ' ',
}

vim.g.dashboard_custom_header =
{
  ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
  ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
  ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
  ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
  ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
  ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
}
