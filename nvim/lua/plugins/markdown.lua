return {
  {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = {
      anti_conceal = { enabled = false },
      on = {
        render = function(ctx)
          if vim.diagnostic.is_enabled({ bufnr = ctx.buf }) then
            vim.diagnostic.enable(false, { bufnr = ctx.buf })
          end
        end,
        clear = function(ctx)
          if not vim.diagnostic.is_enabled({ bufnr = ctx.buf }) then
            vim.diagnostic.enable(true, { bufnr = ctx.buf })
          end
        end,
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        update_in_insert = function(_, bufnr)
          return vim.bo[bufnr].filetype == "markdown"
        end,
      },
    },
  },
}
