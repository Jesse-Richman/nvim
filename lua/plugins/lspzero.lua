return {
    'VonHeikemen/lsp-zero.nvim',
    lazy = false,
    branch = 'v1.x',
    dependencies = {
        -- LSP Support
        {'neovim/nvim-lspconfig'},             -- Required
        {'williamboman/mason.nvim'},           -- Optional
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

        -- Autocompletion
        {'hrsh7th/nvim-cmp'},         -- Required
        {'hrsh7th/cmp-nvim-lsp'},     -- Required
        {'hrsh7th/cmp-buffer'},       -- Optional
        {'hrsh7th/cmp-path'},         -- Optional
        {'saadparwaiz1/cmp_luasnip'}, -- Optional
        {'hrsh7th/cmp-nvim-lua'},     -- Optional

        -- Snippets
        {'L3MON4D3/LuaSnip'},             -- Required
        {'rafamadriz/friendly-snippets'}, -- Optional
    },
    keys = {
        { "<leader>cd", vim.diagnostic.open_float, desc = "Line Diagnostics" },
        { "<leader>cl", "<cmd>LspInfo<cr>", desc = "Lsp Info" },
        { "<leader>ca", vim.lsp.buf.code_action, desc = "Lsp Code Action" },
        { "<leader>ch", vim.lsp.buf.signature_help, desc = "Lsp Signature Help" },


        {"<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>",
            mode = "n", desc = "Toggle breakpoint"},
        {"<leader>dc", "<cmd>lua require'dap'.continue()<cr>", mode = "n"},
        {"<leader>di", "<cmd>lua require'dap'.step_into()<cr>", mode = "n"},
        {"<leader>do", "<cmd>lua require'dap'.step_over()<cr>", mode = "n"},
        {"<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", mode = "n"},
        {"<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", mode = "n"},
        {"<leader>dl", "<cmd>lua require'dap'.run_last()<cr>", mode = "n"},
        {"<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", mode = "n"},
        {"<leader>dt", "<cmd>lua require'dap'.terminate()<cr>", mode = "n"},
    },
    config = function(plugin, opts)
        local lsp = require('lsp-zero').preset({
            name = 'minimal',
            set_lsp_keymaps = true,
            manage_nvim_cmp = true,
            suggest_lsp_servers = true,
        })

        require('mason').setup()
        local handlers = {
            function(server_name) -- optional default handler 
                require('lspconfig')[server_name].setup {}
            end,
            ['html'] = function()
                require('lspconfig')['html'].setup {
                    filetypes = { 'html', 'templ' }
                }
            end,
            ['htmx'] = function()
                require('lspconfig')['htmx'].setup {
                    filetypes = { 'html', 'templ' }
                }
            end,
            ['gopls'] = function()
                require('lspconfig')['gopls'].setup{
                    settings = {
                        completeUnimported = true,
                        usePlaceholders = true,
                        analyses = {
                            unusedparams = true,
                        },
                    },
                }
            end,
            ['svelte'] = function()
                require('lspconfig')['svelte'].setup{
                    filetypes = {'svelte'}
                }
            end,
        }
        require('mason-lspconfig').setup({ handlers = handlers })

        -- (Optional) Configure lua language server for neovim
        lsp.nvim_workspace()

        lsp.setup()
    end,
}
