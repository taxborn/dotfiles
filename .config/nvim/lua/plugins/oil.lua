return {
   {
	'stevearc/oil.nvim',
	-- Optional dependencies
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
	lazy = false,
	config = function()
	    require("oil").setup({
            default_file_explorer = true,
            columns = { "permissions", "size", "icon", "mtime" },
            keymaps = {
                ["<C-h>"] = false,
            },
	    })

	    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
	    vim.keymap.set("n", "<leader>-", require("oil").toggle_float)
	end
    }
}
