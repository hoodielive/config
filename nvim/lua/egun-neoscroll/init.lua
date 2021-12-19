require('neoscroll').setup({

    -- All these keys will be mapped. 
    -- Pass an empty table ({}) for no mappings.
    mappings = 
    {
      '<C-u>', 
      '<C-d>', 
      '<C-b>', 
      '<C-f>', 
      '<C-y>', 
      '<C-e>', 
      'zt', 
      'zz', 
      'zb'
    },

    -- Hide cursor while scrolling
    hide_cursor = true,

    -- Stop at <EOF> when scrolling downwards
    stop_eof = true,  

    -- Stop scrolling when the cursor reaches the 
    -- scrolloff margin of the file.
    respect_scrolloff = false,

    -- The cursor will keep on scrolling even if 
    -- the window cannot scroll further.
    cursor_scrolls_alone = true
})

