return {
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "light2026" },
  },
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            format = function(item, picker)
              local ret = require("snacks.picker.format").file(item, picker)
              local main = picker.main
              if main and vim.api.nvim_win_is_valid(main) then
                local name = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(main))
                if name ~= "" and vim.fs.normalize(name) == item.file then
                  ret[#ret + 1] = { col = 0, line_hl_group = "ExplorerActiveBuf" }
                end
              end
              return ret
            end,
          },
        },
      },
    },
    init = function()
      local function set_hl()
        vim.api.nvim_set_hl(0, "ExplorerActiveBuf", { bg = "#c8d9f0" })
      end
      set_hl()
      vim.api.nvim_create_autocmd("ColorScheme", { callback = set_hl })
      vim.api.nvim_create_autocmd("BufEnter", {
        callback = function()
          vim.schedule(function()
            local p = Snacks.picker.get({ source = "explorer" })[1]
            if p then
              p.list:update({ force = true })
            end
          end)
        end,
      })
    end,
  },
}
