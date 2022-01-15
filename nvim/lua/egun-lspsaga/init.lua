-- local saga = require 'lspsaga'
require('lspsaga').init_lsp_saga({

  use_saga_diagnostic_sign = true,
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  dianostic_header_icon = '   ',
  code_action_icon = ' ',

  code_action_prompt =
  {
    enable = true,
    sign = true,
    sign_priority = 20,
    virtual_text = true
  },

  finder_definition_icon = '  ',
  finder_reference_icon = '  ',

  -- preview lines of lsp_finder and definition preview
  max_preview_lines = 10,

  finder_action_keys =
  {
    open = 'o',
    vsplit = 's',
    split = 'i',
    quit = 'q',
    scroll_down = '<C-f>',

    -- quit can be a table
    scroll_up = '<C-b>'
  },

  code_action_keys =
  {
    quit = 'q',
    exec = '<CR>'
  },

  rename_action_keys = 
  {
    quit = '<C-c>',
    exec = '<CR>'  
  },

  definition_preview_icon = '  ',

  -- "single" "double" "round" "plus"
  border_style = "single",

})

-- This is an expirament, you must consolidate this asap.
local on_attach = function()
  local mappings =
  {
    mappings =
    {
      ['\\ld'] = "<cmd>lua require'lspsaga.diagnostic'.show_line_diagnostics()<CR>",
      ['<c-]'] = '<cmd>lua vim.lsp.buf.definition()<CR>',
      ['K'] = "<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>",
      ['gd'] = '<cmd>lua vim.lsp.buf.declaration()<CR>',
    }
  }
end

-- like server_filetype_map = {metals = {'sbt', 'scala'}}
-- server_filetype_map = {}
