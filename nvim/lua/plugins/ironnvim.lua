return {
    "Vigemus/iron.nvim",
    lazy = false, -- load immediately; you can change to event = "VeryLazy"
    config = function()
        local iron = require("iron.core")
        local view = require("iron.view")
        local common = require("iron.fts.common")

        iron.setup({
            config = {
                scratch_repl = true,
                ignore_blank_lines = true,
                repl_definition = {
                    sh = {
                        command = { "bash" },
                    },
                    python = {
                        command = { "python3" },
                        format = common.bracketed_paste_python,
                        block_dividers = { "# %%", "#%%" },
                    },
                },
                repl_filetype = function(bufnr, ft)
                    return ft
                end,
                repl_open_cmd = {
                    view.split.vertical.botright("65%"),
                    view.split.belowright("25%"),
                },
            },

            keymaps = {
                toggle_repl = "<leader>rr",
                restart_repl = "<leader>rR",
                send_motion = "<leader>zc",
                visual_send = "<leader>zc",
                send_file = "<leader>zf",
                send_line = "<leader>zl",
                send_paragraph = "<leader>zp",
                send_until_cursor = "<leader>zu",
                send_mark = "<leader>zm",
                send_code_block = "<leader>zb",
                send_code_block_and_move = "<leader>zn",
                mark_motion = "<leader>mc",
                mark_visual = "<leader>mc",
                remove_mark = "<leader>md",
                cr = "<leader>z<cr>",
                interrupt = "<leader>z<space>",
                exit = "<leader>zq",
                clear = "<leader>cl",
            },

            highlight = {
                italic = true,
            },
        })

        vim.keymap.set("n", "<leader>rf", "<cmd>IronFocus<cr>", { desc = "Focus REPL" })
        vim.keymap.set("n", "<leader>rh", "<cmd>IronHide<cr>", { desc = "Hide REPL" })
    end,
}
