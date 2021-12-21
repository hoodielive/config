require'cmp'.setup
{
  sources =
  {
    { name = 'nvim-lsp' }
  }
}

local capabilities =
  vim.lsp.protocol.make_client_capabilites()
  capabilites = require('cmp-nvim-lsp').update_capabilites(capabilites)

require'lspconfig'.clangd.setup
{
  capabilites = capabilites,
}

