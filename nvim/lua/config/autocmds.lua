-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local rnu_group = vim.api.nvim_create_augroup("insert_absolute_numbers", { clear = true })

vim.api.nvim_create_autocmd("InsertEnter", {
  group = rnu_group,
  callback = function()
    if vim.wo.relativenumber then
      vim.w.restore_rnu = true
      vim.wo.relativenumber = false
    end
  end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
  group = rnu_group,
  callback = function()
    if vim.w.restore_rnu then
      vim.w.restore_rnu = nil
      vim.wo.relativenumber = true
    end
  end,
})
