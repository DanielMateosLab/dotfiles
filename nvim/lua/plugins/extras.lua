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
