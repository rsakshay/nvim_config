--[[ keys.lua ]]
local map = vim.keymap.set

-- remap the key used to leave insert mode
map('i', 'jj', '<Esc>', {})

-- Toggle nvim-tree
map('n', 'n', [[:NvimTreeToggle]], {})
map('n', 't', [[:TagbarToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
