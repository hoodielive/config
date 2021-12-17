-- Keybindings.

-- You will use jj to esc while in insert mode.
keymap('i', 'jj', '<ESC>', opts)
keymap('n', '<C-L>', ':nohl<CR><C-L>', opts)

g.rnvimr_ex_enable = 1
keymap("n", "<space>r", ":RnvimrToggle<CR>", opts)

-- Configure FZF.
keymap('n', '<c-P>', "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })
