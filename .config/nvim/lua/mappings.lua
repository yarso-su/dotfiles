require "nvchad.mappings"

local cowboy = require "utils.cowboy"
cowboy()

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")
map("i", "jj", "<ESC>")
map("i", "kk", "<ESC>")

map("n", "ss", ":split<Return>", opts)
map("n", "sv", ":vsplit<Return>", opts)

map("n", "<C-a>", "gg<S-v>G")

map("n", "<leader>ca", vim.lsp.buf.code_action, {})

-- map("n", "<leader>db", "<cmd> DapToggleBreakpoint<CR>")
-- map("n", "<Leader>dus", function()
--   local widgets = require "dap.ui.widgets"
--   local sidebar = widgets.sidebar(widgets.scopes)
--
--   sidebar.open()
-- end)

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
