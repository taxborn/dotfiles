local setup, nvimtree = pcall(require, "nvim-tree")

if not setup then
    return
end

-- recommended settings
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

vim.cmd([[ highlight NvimTreeIndentMarker guifg=#b4befe ]])

nvimtree.setup({
    open_on_setup = true,
    open_on_tab = true,
    actions = {
        open_file = {
            quit_on_open = true,
            window_picker = {
                enable = false,
            }
        }
    }
})
