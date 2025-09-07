return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        local npairs = require("nvim-autopairs")
        npairs.setup({
            check_ts = true,                                 -- Enable Treesitter support
            enable_close = true,                             -- Enable auto-close pairs (e.g., </> for HTML)
            disable_filetype = { "TelescopePrompt", "vim" }, -- Disable in certain filetypes
        })
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")
        local cmp = require("cmp")
        cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
    end
}
