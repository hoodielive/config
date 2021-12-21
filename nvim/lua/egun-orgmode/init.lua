local parser_config = require "nvim-treesitter.parsers".get_parser_configs()

parser_config.org = {
  install_info = {
    url = 'https://github.com/milisims/tree-sitter-org',
    revision = 'f110024d539e676f25b72b7c80b0fd43c34264ef',
    files = {'src/parser.c', 'src/scanner.cc'},
  },

  filetype = 'org',

}


require'nvim-treesitter.configs'.setup {

  -- If TS highlights are not enabled at all, or disabled via `disable` 
  -- prop, highlighting will fallback to default Vim syntax highlighting

  highlight = {
    enable = true,

    -- Remove this to use TS highlighter for some of the highlights (Experimental)
    disable = {'org'},

    -- Required since TS highlighter doesn't support all syntax features (conceal)
    additional_vim_regex_highlighting = {'org'}, 
  },

  -- Or run :TSUpdate org
  ensure_installed = {'org'},
}


require('orgmode').setup({
  org_agenda_files = {'~/Dropbox/Org/*', '~/Clones/Org/**/*'},
  org_default_notes_file = '~/Dropbox/Org/refile.org',
})


--require('orgmode-bullets').setup({
--  symbols = { "◉", "○", "✸", "✿"  },
--})
