-- Function for map.

function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- You will use jj to esc while in insert mode.
map('i', 'jj', '<ESC>', opts)

-- When I press CTRL+l turnoff highlight search.
map('n', '<C-L>', ':nohl<CR><C-L>', opts)

-- Evoke rnvimr with Space-r.
vim.g.rnvimr_ex_enable = 1
map("n", "<space>r", ":RnvimrToggle<CR>", opts)

-- Evoke fzf with CTRL-p
map('n', '<c-P>', "<cmd>lua require('fzf-lua').files()<CR>", { noremap = true, silent = true })

