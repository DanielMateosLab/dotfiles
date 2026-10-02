return {
  { "esmuellert/codediff.nvim", cmd = "CodeDiff" },
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
    opts = { terminal = { provider = "none" } },
  },
}
