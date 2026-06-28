return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    config = function()
      require("flutter-tools").setup {
        lsp = {
          on_attach = function(client, bufnr)
            if client.supports_method "textDocument/documentColor" then
              vim.lsp.document_color.enable(true, { bufnr = bufnr })
            end
          end,
          capabilities = require("cmp_nvim_lsp").default_capabilities(),
        },
      }
    end,
  },
}
