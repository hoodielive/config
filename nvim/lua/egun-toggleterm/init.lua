require('toggleterm').setup({

  function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,

  open_mapping = [[<c-\>]],

  -- Hide the number column in toggleterm buffers.
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,

  -- The degree by which to darken to terminal color,
  -- default: 1 for dark backgrounds, 3 for light.
  shading_factor = '<number>',

  start_in_insert = true,

  -- Whether or not the open mapping applies in insert mode.
  insert_mappings = true,

  persist_size = true,

  -- Can be horizontal, vertical, float or window.
  direction = 'horizontal',

  -- Close the terminal window when the process exits.
  close_on_exit = true,

  -- Change the default shell.
  shell = vim.o.shell,

  function(term)
    if term.direction == "float" then
      -- Border key is *almost* the same as 'nvim_open_win'
      -- see :h nvim_open_win for details on borders however
      -- the 'curved' border is a custom border type
      -- not natively supported but implemented in this plugin.
      float_opts = 
      {
        -- The documentation confirms other options are supported.
        border = 'shadow',
        width = "",
        height = "",
        winblend = 3,
        highlights ="",
        {
          border = "Normal",
          background = "Normal",
        }
      }
    end
  end,

})

function(term)
  _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end 
