return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = { anti_conceal = { enabled = false } },
  },
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = { "--config", vim.fn.stdpath("config") .. "/markdownlint.jsonc", "-" },
        },
      },
    },
  },
}
