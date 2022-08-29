--[[ init.lua ]]

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('ak56.globals')      -- Global Variables
require('ak56.options')      -- Options
require('ak56.keymaps')      -- Keymaps
require('ak56.plugins')      -- Plugins

-- PLUGINS
require('ak56.treesitter')
require('ak56.nvim-tree')
require('ak56.autopairs')
