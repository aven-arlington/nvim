-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.mapleader = " "
vim.g.localleader = "\\"

-- remap the key used to leave insert mode
vim.keymap.set("i", "jk", "<Esc>", {})
vim.keymap.set("i", "kj", "<Esc>", {})

-- Prevent Q from ever being issued as a standalone keypress
vim.keymap.set("n", "Q", "<nop>")

-- vim-powered terminal in a split window
-- vim.keymap.set("n", "<leader>t", ":sp +term ++close <cr> A")
-- vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Quit buffer without saving
-- vim.keymap.set("n", "<leader>q", ":q! <cr>")

-- Half-page jumping with centered cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Allows search terms to stay centered while jumping around
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete highlighted word into the void register
-- Allows repeated pasting over items
-- vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank selection to clipboard
-- vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
-- vim.keymap.set("n", "<leader>Y", [["+Y]])
-- vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Shortcut to cancel out of vertical edit mode
-- vim.keymap.set("i", "<C-c>", "<Esc>")

-- Switch to a new session/project
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
-- vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Type in and replace the word that is highlighted
-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Mark a file as executable i.e. chmod +x
-- vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- "Shout Out" or reload the lua files
-- vim.keymap.set("n", "<leader><leader>", function()
--    vim.cmd("so")
-- end)

-- Shortcut to file view
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- pv is short for project view
