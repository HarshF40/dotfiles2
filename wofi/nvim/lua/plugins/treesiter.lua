return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            highlight = {
                enable = true,
            },
            indent = { enable = true },
            -- autotag = { enable = true },
            ensure_installed = {
                "lua",
                "c",
                "cpp",
                "python",
                "dart",
                "tsx",
                "typescript",
                "html",
                "javascript",
                "css",
                "json"
            },
            auto_install = false,
        })
    end
}
