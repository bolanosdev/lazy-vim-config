-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>sx", builtin.resume, { noremap = true, silent = true, desc = "Resume" })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>tkm", "<cmd>Telescope keymaps<cr>")

-- <leader>gc commenter
-- <leader>uC change theme
-- <leader>fb see buffers
-- <leader>| split buffer vertically
-- <leader>- split buffer horizontally
-- <leader>st navigate across TODOs
-- <ap reduce indentation
-- dap delete paragraph
-- [|] +b switch buffers
