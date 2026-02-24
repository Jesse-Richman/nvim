return {
    'hrsh7th/nvim-cmp',
    lazy = false,
    dependencies = {
        {'hrsh7th/cmp-nvim-lsp'},
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'saadparwaiz1/cmp_luasnip'},
        {'hrsh7th/cmp-nvim-lua'},

        -- Snippets
        {'L3MON4D3/LuaSnip'},
        {'rafamadriz/friendly-snippets'},
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
}
