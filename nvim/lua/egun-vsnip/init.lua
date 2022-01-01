vim.g.vsnip_snippet_dir = '/home/enilo/.config/nvim/snippets'

--vim.g.UltiSnipsSnippetDirectories = '/home/enilo/.config/snippets'


vim.cmd [[
" pmenu and vim-vsnip
imap <expr> <Tab>   pumvisible() ? "<C-n>" : vsnip#jumpable(1)   ? "<Plug>(vsnip-jump-next)" : "<Tab
>"
imap <expr> <S-Tab> pumvisible() ? "<C-p>" : vsnip#jumpable(-1)  ? "<Plug>(vsnip-jump-prev)" : "<S-T
ab>"

" vim-vsnip
smap <expr> <Tab>   vsnip#jumpable(1)  ? "<Plug>(vsnip-jump-next)" : "<Tab>"
smap <expr> <S-Tab> vsnip#jumpable(-1) ? "<Plug>(vsnip-jump-prev)" : "<S-Tab>"
]]


-- vim.cmd [[ "let g:UltiSnipsSnippetDirectories=["UltiSnips", "UnitySnippets","ZenjetSnippets"" ]]
