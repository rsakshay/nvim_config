--[[ keys.lua ]]
local map = vim.keymap.set

-- remap the key used to leave insert mode
map('i', 'jj', '<Esc>', {})

-- Toggle nvim-tree
map('n', '<leader>n', [[:NvimTreeToggle]], {})
map('n', '<leader>t', [[:TagbarToggle]], {})
map('n', '<leader>ff', [[:Telescope find_files]], {})
