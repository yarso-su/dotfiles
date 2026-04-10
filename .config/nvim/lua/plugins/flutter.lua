return {
{
  'akinsho/flutter-tools.nvim',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim',
  },
  config = function()
    require('flutter-tools').setup {
      lsp = {
        color = {
          enabled = true,
        },
        on_attach = function(client, bufnr)
        end,
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
      },
    }
  end
}
}
