return {
    'hrsh7th/nvim-cmp',
    lazy = false,
    dependencies = {
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'saadparwaiz1/cmp_luasnip' },
        { 'hrsh7th/cmp-nvim-lua' },

        -- Snippets
        { 'L3MON4D3/LuaSnip' },
        { 'rafamadriz/friendly-snippets' },
    },
    keys = {
        { "<leader>cd", vim.diagnostic.open_float,  desc = "Line Diagnostics" },
        { "<leader>cl", "<cmd>LspInfo<cr>",         desc = "Lsp Info" },
        { "<leader>ca", vim.lsp.buf.code_action,    desc = "Lsp Code Action" },
        { "<leader>ch", vim.lsp.buf.signature_help, desc = "Lsp Signature Help" },


        {
            "<leader>db",
            "<cmd>lua require'dap'.toggle_breakpoint()<cr>",
            mode = "n",
            desc = "Toggle breakpoint"
        },
        { "<leader>dc", "<cmd>lua require'dap'.continue()<cr>",    mode = "n" },
        { "<leader>di", "<cmd>lua require'dap'.step_into()<cr>",   mode = "n" },
        { "<leader>do", "<cmd>lua require'dap'.step_over()<cr>",   mode = "n" },
        { "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>",    mode = "n" },
        { "<leader>dr", "<cmd>lua require'dap'.repl.toggle()<cr>", mode = "n" },
        { "<leader>dl", "<cmd>lua require'dap'.run_last()<cr>",    mode = "n" },
        { "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>",    mode = "n" },
        { "<leader>dt", "<cmd>lua require'dap'.terminate()<cr>",   mode = "n" },
    },
    opts = function()
        -- Register nvim-cmp lsp capabilities
        vim.lsp.config("*", { capabilities = require("cmp_nvim_lsp").default_capabilities() })

        local cmp = require("cmp")
        local defaults = require("cmp.config.default")()
        local auto_select = true
        return {
            completion = {
                completeopt = "menu,menuone,noinsert" .. (auto_select and "" or ",noselect"),
            },
            preselect = auto_select and cmp.PreselectMode.Item or cmp.PreselectMode.None,
            mapping = cmp.mapping.preset.insert({
                ["<Down>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
                ["<Up>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = false }),
                ["<tab>"] = cmp.mapping.confirm({ select = true }),
            }),
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = 'luasnip' },
                { name = "buffer" },
                { name = "path" },
            }),
            sorting = defaults.sorting,
        }
    end,
}
