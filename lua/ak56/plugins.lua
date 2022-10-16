--[[ plugins.lua ]]

local packer = require('packer')
local util = require('packer.util')

packer.init({
  package_root = util.join_paths(vim.fn.stdpath('config'), 'site', 'pack')
})


packer.startup(function(use)
  -- [[ Plugins Go Here ]]
  use { 'wbthomason/packer.nvim' }                   -- packer itself
  use {                                              -- filesystem navigation
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons'        -- filesystem icons
  }

  -- [[ Theme ]]
  use { 'mhinz/vim-startify' }                       -- start screen
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {'kyazdani42/nvim-web-devicons',
                opt = true}
  }
  --use { 'Mofiqul/dracula.nvim' }                     -- colorscheme
  use { "ellisonleao/gruvbox.nvim" }

  -- [[ Dev ]]
  use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-treesitter/nvim-treesitter',               -- syntax highliter
    run = ":TSUpdate"
  }

  -- cmp plugins
  use({ "hrsh7th/nvim-cmp" })                        -- The completion plugin
  use({ "hrsh7th/cmp-buffer" })                      -- buffer completions
  use({ "hrsh7th/cmp-path" })                        -- path completions
  use({ "saadparwaiz1/cmp_luasnip" })                -- snippet completions
  use({ "hrsh7th/cmp-nvim-lsp" })
  use({ "hrsh7th/cmp-nvim-lua" })

  -- snippets
  use({ "L3MON4D3/LuaSnip" })                        --snippet engine
  use({ "rafamadriz/friendly-snippets" })            -- a bunch of snippets to use

  -- LSP
  use({ "neovim/nvim-lspconfig" })                   -- enable LSP
  use({ "williamboman/nvim-lsp-installer" })         -- simple to use language server installer
  use({ "jose-elias-alvarez/null-ls.nvim" })         -- for formatters and linters

  use { 'majutsushi/tagbar' }                        -- code structure
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
end)
