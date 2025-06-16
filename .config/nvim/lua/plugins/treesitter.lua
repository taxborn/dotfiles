return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = { enable = true },
            indent = { enable = true },
            autotag = { enable = true },
            ensure_installed = {
                "c", "zig", "rust", "astro", "java"
            },
            auto_install = false,
        })
    end
}
