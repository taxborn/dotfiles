return {
    {
        "folke/snacks.nvim",
        priority = 1000,
        lazy = false,
        ---@type snacks.Config
        opts = {
            lazygit = { enabled = true },
        },
        keys = {
            { "<leader>lg", function() require("snacks").lazygit() end, desc = "Lazygit" },
            { "<leader>gl", function() require("snacks").lazygit.log() end, desc = "Lazygit" },

            { "<leader>gbr", function() require("snacks").picker.git_branches({ layout = "select" }) end, desc = "Lazygit" },
        },
    }
}
