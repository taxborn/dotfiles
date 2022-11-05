vim.g.mapleader = " "

local keymap = vim.keymap

-- general keymaps
keymap.set("i", "jk", "<ESC>")

keymap.set("n", "<leader>,", ":nohl<CR>")

keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

keymap.set("n", "<leader>sv", "<C-w>v") -- split window verically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- set windows equal width
keymap.set("n", "<leader>sx", ":close<CR>") -- close current window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- create a new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close the current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- previous tab

keymap.set("n", ",<space>", ":nohlsearch<CR>") -- previous tab

-- plugin keymaps

-- vim maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- previous tab

-- nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- previous tab

-- telescope
keymap.set("n", "<leader><leader>", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

-- coc.nvim
keymap.set("n", "<leader>]g", "<Plug>(coc-diagnostic-prev)")
keymap.set("n", "<leader>[g", "<Plug>(coc-diagnostic-next)")

keymap.set("n", "<silent>gd", "<Plug>(coc-definition)")
keymap.set("n", "<silent>gy", "<Plug>(coc-type-definition)")
keymap.set("n", "<silent>gi", "<Plug>(coc-implementation)")
keymap.set("n", "<silent>gr", "<Plug>(coc-refernce)")

keymap.set("n", "<leader>rn", "<Plug>(coc-rename)")

-- programming languages

-- python
keymap.set("n", "<leader>py", "<cmd>!python3 %<CR>")

-- rust
keymap.set("n", "<leader>cr", "<cmd>!cargo run<CR>")
keymap.set("n", "<leader>cc", "<cmd>!cargo clippy<CR>")
