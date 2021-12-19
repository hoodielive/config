local cmp = require'cmp'
cmp.setup({
  snippet =
  {
    -- For 'luasnip' and ultisnips
    -- require('luasnip').lsp_expand(args.body)
    -- vim.fn["UltiSnips#Anon"](args.body)
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body)
    end,
  },

  mapping =
  {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),

      -- Specify `cmp.config.disable` if you want
      -- to remove the default `<C-y>` mapping.
      ['<C-y>'] = cmp.config.disable, 

      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),

      -- Accept currently selected item.
      -- Set `select` to `false` to only confirm
      -- explicitly selected items.

      ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },

    sources = cmp.config.sources(
    {
      { name = 'nvim_lsp' },

      -- Availability for
      -- luasnip,
      -- ultisnips
      -- and snippy exist.
      { name = 'vsnip' },

    },
    {
      { name = 'buffer' },
    })
})

-- require'lspconfig'.clangd.setup 
-- { 
--   capabilities = require('cmp_nvim_lsp')
--     .update_capabilities(
--       vim.lsp.protocol.make_client_capabilites()
--     )
-- }

