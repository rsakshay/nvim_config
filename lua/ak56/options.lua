--[[ options.lua ]]
local options = {
    -- [[ Context ]]
    colorcolumn = '80',                      -- str:  Show col for max line length
    number = true,                           -- bool: Show line numbers
    relativenumber = false,                  -- bool: Hide relative line numbers
    signcolumn = "yes",                      -- str:  Show the sign column
    clipboard = "unnamedplus",               -- str:  Allow for for system clipboard itneraction
    mouse = "a",                             -- str: Allows mouse to be used in neovim
    conceallevel = 0,                        -- num: so that `` is visble in md files
    backup = false,                          -- bool: creates a backup file
    swapfile = false,                        -- bool: disable the swapfile
    timeoutlen = 500,                        -- num: Reduce the timeout for commands
    cursorline = true,                       -- bool: Shows current line highlight
    wrap = false,                            -- bool: disable wrap. keep all lines in a single line

    -- [[ Filetypes ]]
    encoding = 'utf8',                       -- str:  String encoding to use
    fileencoding = 'utf8',                   -- str:  File encoding to use

    -- [[ Theme ]]
    syntax = "ON",                           -- str:  Allow syntax highlighting
    termguicolors = true,                    -- bool: If term supports ui color then enable

    -- [[ Search ]]
    ignorecase = true,                       -- bool: Ignore case in search patterns
    smartcase = true,                        -- bool: Override ignorecase if search contains capitals
    incsearch = true,                        -- bool: Use incremental search
    hlsearch = true,                         -- bool: Highlight search matches

    -- [[ Whitespace ]]
    expandtab = true,                        -- bool: Use spaces instead of tabs
    shiftwidth = 4,                          -- num:  Size of an indent
    softtabstop = 4,                         -- num:  Number of spaces tabs count for in insert mode
    tabstop = 4,                             -- num:  Number of spaces tabs count for

    -- [[ Window ]]
    cmdheight = 2,                           -- num: space in the neovim command line for displaying messages
    scrolloff = 8,                           -- int:  Min num lines of context
    sidescrolloff = 8,                       -- int:  Min num lines of context
    showtabline = 2,                         -- num: Always show tabs
    completeopt = { "menuone", "noselect" }, -- list: for insert mode completion
    guifont = "monospace:h17",               -- font used in graphical neovim
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
    vim.opt[k] = v
end

local nvim_cmd = vim.api.nvim_command
--nvim_cmd('colorscheme dracula')            -- cmd:  Set the colorscheme
nvim_cmd('colorscheme gruvbox')              -- cmd:  Set the colorscheme

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
