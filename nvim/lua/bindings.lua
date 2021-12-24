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

map('n', '<c-t>',":ToggleTerm<CR>", opts)

-- map('n', '<c-x>', ":split<CR>", opts)

map('n', '<c-\\>', ":vsplit<CR>", opts)

map('n', '<space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
map('n', '<space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
map('n', '<space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
map('n', '<space>d', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
map('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
map('n', '<space>h', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', '<space>m', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
map('n', '<space>i', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', '<space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>', opts)

map('n', '<space>L,', ':LazyGit<CR>', opts)
