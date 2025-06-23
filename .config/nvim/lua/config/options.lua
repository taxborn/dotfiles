-- Show which line the cursor is on
vim.opt.cursorline = true

-- Tabs = 4 spaces
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.shiftwidth = 4   -- Amount to indent with << and >>
vim.opt.tabstop = 4      -- How many spaces are shown per Tab
vim.opt.softtabstop = 4  -- How many spaces are applied when pressing Tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true -- Keep identation from previous line

-- Enable break indent
vim.opt.breakindent = true

-- Show relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Store undos between sessions
vim.opt.undofile = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = "a"

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = "yes"

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.backspace = { "start", "eol", "indent" }

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5

-- max line width
vim.opt.colorcolumn = "80,100"
vim.opt.clipboard:append("unnamedplus")

vim.opt.isfname:append("@-@") -- ???
vim.opt.updatetime = 50

vim.g.editorconfig = true

-- Highlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end
})
