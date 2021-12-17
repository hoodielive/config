-- https://vi.stackexchange.com/questions/31206
M.flash_cursorline = function()
    vim.opt.cursorline = true
    vim.cmd([[hi CursorLine guifg=#000000 guibg=#ffffff]])
    vim.fn.timer_start(200, function()
        vim.cmd([[hi CursorLine guifg=NONE guibg=NONE]])
        vim.opt.cursorline = false
    end)
end
