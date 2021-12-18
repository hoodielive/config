local ts_config = require('nvim-treesitter.configs')

ts_config.setup {
  ensure_installed = 
  {
    'javascript',
    'html',
    'bash',
    'lua',
    'json',
    'python',
    'comment',
    'cpp',
    'c',
    'c_sharp',
    'dockerfile',
    'elm',
    'php',
    'zig',
    'graphql',
    'make',
    'llvm',
    'http',
    'yaml',
    'vue',
    'toml',
    'vim',
    'go',
    'fish',
    'erlang',
    'elixir',
    'typescript',
  }
}
