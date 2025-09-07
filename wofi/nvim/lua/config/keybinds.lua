vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
-- Resize splits using Alt + [ or ]
vim.keymap.set("n", "<A-[>", ":vertical resize -4<CR>", { silent = true })
vim.keymap.set("n", "<A-]>", ":vertical resize +4<CR>", { silent = true })
vim.keymap.set("n", "<A-/>", ":resize -4<CR>", { silent = true })
vim.keymap.set("n", "<A-'>", ":resize +4<CR>", { silent = true })
vim.keymap.set("v", "<leader>Y", '"+y', { silent = true })
