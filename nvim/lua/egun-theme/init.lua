require('kanagawa').setup({
  undercurl = true,
  commentStyle = "NONE",
  functionStyle = "NONE",
  keywordStyle = "italic",
  statementStyle = "bold",
  typeStyle = "NONE",
  variablebuiltinStyle = "italic",
  specialReturn = true,
  specialException = true,
  transparent = false,
  colors = {},
  overrides = {},
})

vim.cmd 'colorscheme kanagawa'


