local nvim_lsp = require('lspconfig')
local pid = vim.fn.getpid()
local omnisharp_bin = "/usr/sbin/omnisharp"

--require('omnisharp').setup({
--  'omnisharp_bin',
--  '--languageserver',
--  '--hostPID',
--  '--tostriing(pid'
--});
--
-- omnisharp lsp config
require'lspconfig'.omnisharp.setup {
  capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities()),
  on_attach = function(_, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')
  end,
  --cmd = { "/path/to/omnisharp-roslyn/bin/omnisharp/run", "--languageserver" , "--hostPID", tostring(pid) },
  cmd = { "/usr/sbin/omnisharp", "--languageserver" , "--hostPID", tostring(pid) },
}

-- vim.fn.environ()['HOME']..'.cache/omnisharp-vim/omnisharp-roslyn/omnisharp/OmniSharp.exe'
local nvim_lsp_defaults = require('nvim_lsp/configs')

if not nvim_lsp_defaults.omnisharp then
  nvim_lsp_defaults.omnisharp = {
  default_config = {
  filetypes =
  {
    'cache',
    'cs',
    'csproj',
    'dll',
    'nuget',
    'props',
    'sln',
    'targets'
  },
    root_dir = nvim_lsp.util.root_pattern('.git', '.sln') or vim.loop.os_homedir(), } }
end

nvim_lsp.omnisharp.setup{
cmd = (vim.fn.has('win32') == 1) and {exe, '-lsp'} or {'mono', exe, '-lsp'}}

