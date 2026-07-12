return {
  {
    "mfussenegger/nvim-dap",
  },
  {
    "supermaven-inc/supermaven-nvim",
    lazy = false,
    config = function()
      require("supermaven-nvim").setup {
        keymaps = {
          accept_suggestion = "<leader><Tab>",
        },
      }
    end,
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<leader><c-h>", "<cmd> TmuxNavigateLeft<cr>" },
      { "<leader><c-j>", "<cmd> TmuxNavigateDown<cr>" },
      { "<leader><c-k>", "<cmd> TmuxNavigateUp<cr>" },
      { "<leader><c-l>", "<cmd> TmuxNavigateRight<cr>" },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      max_lines = 3,
    },
  },
}
