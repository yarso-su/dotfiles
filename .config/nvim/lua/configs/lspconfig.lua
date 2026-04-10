require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "ts_ls", "astro", "tailwindcss", "eslint", "svelte", "solargraph", "gopls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
