function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- You will use jj to esc while in insert mode.
map('i', 'jj', '<ESC>', opts)
map('n', '<C-L>', ':nohl<CR><C-L>', opts)

vim.g.rnvimr_ex_enable = 1
map("n", "<space>r", ":RnvimrToggle<CR>", opts)

-- Configure FZF.
map('n', '<c-P>', "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })
