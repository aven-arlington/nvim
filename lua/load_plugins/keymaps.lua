-- [[ keymaps.lua ]]
-- Leaders
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- remap the key used to leave insert mode
vim.keymap.set('i', 'jk', '<Esc>', {})
vim.keymap.set('i', 'kj', '<Esc>', {})

-- vim-powered terminal in a split window
vim.keymap.set("n", "<leader>t", ":sp +term ++close <cr> A")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

-- Quit buffer without saving
vim.keymap.set("n", "<leader>q", ":q! <cr>")

-- Telescope Maps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex) -- pv is short for project view
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})

-- Harpoon Maps
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)

-- Undotree Toggle
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

-- vim-fugitive (git helper)
vim.keymap.set("n", "<leader>gs", vim.cmd.Git);

-- Vimspector
vim.cmd([[
nmap <F9> <cmd>call vimspector#Launch()<cr>
nmap <F5> <cmd>call vimspector#StepOver()<cr>
nmap <F8> <cmd>call vimspector#Reset()<cr>
nmap <F11> <cmd>call vimspector#StepOver()<cr>")
nmap <F12> <cmd>call vimspector#StepOut()<cr>")
nmap <F10> <cmd>call vimspector#StepInto()<cr>")
]])
vim.keymap.set('n', "Db", ":call vimspector#ToggleBreakpoint()<cr>", {})
vim.keymap.set('n', "Dw", ":call vimspector#AddWatch()<cr>", {})
vim.keymap.set('n', "De", ":call vimspector#Evaluate()<cr>", {})

-- Maps from Primeagen
-- Move highlighted text around
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Remove line below and append to end of current line (without moving cursor)
vim.keymap.set("n", "J", "mzJ`z")

-- Half-page jumping with centered cursor
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Allows search terms to stay centered while jumping around
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Delete highlighted word into the void register
-- Allows repeated pasting over items
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Yank selection to clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- Shortcut to cancel out of vertical edit mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- Prevent Q from ever being issues as a standalone keypress
vim.keymap.set("n", "Q", "<nop>")

-- Switch to a new session/project
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Type in and replace the word that is highlighted
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Mark a file as executable i.e. chmod +x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- "Shout Out" or reload the lua files
vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
