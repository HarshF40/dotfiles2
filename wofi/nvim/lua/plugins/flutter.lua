return {
    {
        "akinsho/flutter-tools.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-lua/popup.nvim",
            "nvim-telescope/telescope.nvim",
            "hrsh7th/nvim-cmp",
        },
        ft = { "dart" },
        config = function()
            require("flutter-tools").setup({
                lsp = {
                    color = {
                        enabled = true,
                        background = true,
                        virtual_text = true,
                        virtual_text_str = "■",
                    },
                    on_attach = function(_, bufnr)
                        -- Flutter-specific keymaps
                        vim.keymap.set('n', '<leader>fr', '<cmd>FlutterRun<cr>', { buffer = bufnr, desc = "Flutter Run" })
                        vim.keymap.set('n', '<leader>fR', '<cmd>FlutterReload<cr>',
                            { buffer = bufnr, desc = "Flutter Hot Reload" })
                        vim.keymap.set('n', '<leader>fd', '<cmd>FlutterDevices<cr>',
                            { buffer = bufnr, desc = "Flutter Devices" })
                        vim.keymap.set('n', '<leader>fq', '<cmd>FlutterQuit<cr>',
                            { buffer = bufnr, desc = "Flutter Quit" })
                        vim.keymap.set('n', '<leader>fD', '<cmd>FlutterDetach<cr>',
                            { buffer = bufnr, desc = "Flutter Detach" })
                        vim.keymap.set('n', '<leader>fe', '<cmd>FlutterEmulators<cr>',
                            { buffer = bufnr, desc = "Flutter Emulators" })
                        vim.keymap.set('n', '<leader>fo', '<cmd>FlutterOutlineToggle<cr>',
                            { buffer = bufnr, desc = "Flutter Outline" })

                        -- LSP Code Actions and Navigation
                        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action,
                            { buffer = bufnr, desc = "Code Action" })
                        vim.keymap.set('v', '<leader>ca', vim.lsp.buf.code_action,
                            { buffer = bufnr, desc = "Code Action" })
                        vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename,
                            { buffer = bufnr, desc = "Rename" })

                        -- Diagnostics
                        vim.keymap.set('n', '<leader>cD', vim.diagnostic.open_float,
                            { buffer = bufnr, desc = "Show Diagnostics" })
                        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev,
                            { buffer = bufnr, desc = "Previous Diagnostic" })
                        vim.keymap.set('n', ']d', vim.diagnostic.goto_next,
                            { buffer = bufnr, desc = "Next Diagnostic" })

                        -- Go to Definition/References
                        vim.keymap.set('n', 'gd', vim.lsp.buf.definition,
                            { buffer = bufnr, desc = "Go to Definition" })
                        vim.keymap.set('n', 'gr', vim.lsp.buf.references,
                            { buffer = bufnr, desc = "Go to References" })
                        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation,
                            { buffer = bufnr, desc = "Go to Implementation" })
                        vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition,
                            { buffer = bufnr, desc = "Go to Type Definition" })

                        -- Documentation
                        vim.keymap.set('n', 'K', vim.lsp.buf.hover,
                            { buffer = bufnr, desc = "Hover Documentation" })
                        vim.keymap.set('n', '<leader>ch', vim.lsp.buf.signature_help,
                            { buffer = bufnr, desc = "Signature Help" })

                        -- Formatting
                        vim.keymap.set('n', '<leader>cf', vim.lsp.buf.format,
                            { buffer = bufnr, desc = "Format Document" })
                        vim.keymap.set('v', '<leader>cf', vim.lsp.buf.format,
                            { buffer = bufnr, desc = "Format Selection" })

                        -- Workspace
                        vim.keymap.set('n', '<leader>ws', vim.lsp.buf.workspace_symbol,
                            { buffer = bufnr, desc = "Workspace Symbol" })
                    end,
                },
                widget_guides = {
                    enabled = true,
                },
                closing_tags = {
                    highlight = "ErrorMsg",
                    prefix = "// ",
                    enabled = true,
                },
            })
        end,
    },
}
