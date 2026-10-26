local ts_kinds = {
  "Class",
  "Constructor",
  "Enum",
  "Field",
  "Function",
  "Interface",
  "Method",
  "Module",
  "Namespace",
  "Package",
  "Property",
  "Struct",
  "Trait",
  "Variable",
}

return {
  {
    "LazyVim/LazyVim",
    opts = { kind_filter = { typescript = ts_kinds, typescriptreact = ts_kinds } },
  },
  {
    "folke/snacks.nvim",
    opts = {
      image = { enabled = true },
      picker = {
        sources = {
          explorer = { hidden = true, ignored = true, exclude = { ".git", "node_modules" } },
        },
      },
    },
  },
  {
    "esmuellert/codediff.nvim",
    cmd = "CodeDiff",
    opts = {
      explorer = { view_mode = "tree" },
      keymaps = {
        view = { toggle_explorer = "<localleader>b", focus_explorer = "<localleader>e" },
      },
    },
    config = function(_, opts)
      require("codediff").setup(opts)
      local layout = require("codediff.ui.layout")
      local arrange = layout.arrange
      layout.arrange = function(tabpage)
        local session = require("codediff.ui.lifecycle").get_session(tabpage)
        local panel = session and session.panel and session.panel.view
        local own = {}
        if session then
          for _, w in ipairs({ session.original_win, session.modified_win, session.result_win, panel and panel.winid }) do
            own[w] = true
          end
        end
        local foreign = {}
        for _, w in ipairs(vim.api.nvim_tabpage_list_wins(tabpage)) do
          if session and not own[w] and vim.api.nvim_win_get_config(w).relative == "" then
            foreign[w] = vim.api.nvim_win_get_width(w)
          end
        end
        arrange(tabpage)
        for w, width in pairs(foreign) do
          if vim.api.nvim_win_is_valid(w) then
            pcall(vim.api.nvim_win_set_width, w, width)
          end
        end
        if next(foreign) and panel and panel.winid and vim.api.nvim_win_is_valid(panel.winid) then
          local name = session.panel.name or "explorer"
          local width = require("codediff.config").options[name].width
          pcall(vim.api.nvim_win_set_width, panel.winid, width)
        end
      end
    end,
    keys = {
      { "<leader>gc", "<cmd>CodeDiff<cr>", desc = "CodeDiff" },
    },
  },
  {
    "dnlhc/glance.nvim",
    cmd = "Glance",
    opts = {},
    keys = {
      { "<leader>cgd", "<cmd>Glance definitions<cr>", desc = "Glance definitions" },
      { "<leader>cgr", "<cmd>Glance references<cr>", desc = "Glance references" },
      { "<leader>cgy", "<cmd>Glance type_definitions<cr>", desc = "Glance type definitions" },
      { "<leader>cgi", "<cmd>Glance implementations<cr>", desc = "Glance implementations" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    opts = { max_lines = 5 },
  },
  { "jd4n14/vscode2026.nvim", lazy = true },
  {
    "coder/claudecode.nvim",
    opts = { terminal = { provider = "snacks" } },
    keys = {
      { "<leader>af", "<Esc><cmd>ClaudeCodeFocus<cr>", mode = "x", desc = "Focus Claude" },
    },
  },
}
