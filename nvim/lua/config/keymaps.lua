-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>fy", function()
  vim.fn.setreg("+", vim.fn.expand("%"))
end, { desc = "Copy Relative Path" })

vim.keymap.set("n", "<leader>fY", function()
  vim.fn.setreg("+", vim.fn.expand("%:p"))
end, { desc = "Copy Absolute Path" })

vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { silent = true })
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "'Nn'[v:searchforward].'zzzv'", { expr = true })
vim.keymap.set("n", "N", "'nN'[v:searchforward].'zzzv'", { expr = true })
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')
vim.keymap.set("x", "<leader>p", '"_d"+P')
vim.keymap.set("n", "Q", "<Nop>")
