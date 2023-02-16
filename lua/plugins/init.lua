-- Core plugins
return {
    "nvim-lua/plenary.nvim",
    "kyazdani42/nvim-web-devicons",
	"folke/neodev.nvim",
    {
        "folke/which-key.nvim",
        lazy = false,
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup({
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            })
        end,
    },
    {"numToStr/Comment.nvim",
        keys = {
            {"<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<CR>", mode = "n"},
            {"<leader>/",
            '<ESC><CMD>lua require("Comment.api").toggle.linewise(vim.fn.visualmode())<CR>', mode = "x"},
        },
    },

    {"mbbill/undotree",
        keys = {
            {"<leader>u", ":UndotreeToggle<CR>", mode = "n"},
        },
    },

    -- search/replace in multiple files
    {
        "windwp/nvim-spectre",
        -- stylua: ignore
        keys = {
            { "<leader>sr", function() require("spectre").open() end, desc = "Replace in files (Spectre)" },
        },
    },


    --  use { "kyazdani42/nvim-web-devicons", commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352" }
    --  use { "akinsho/bufferline.nvim", commit = "83bf4dc7bff642e145c8b4547aa596803a8b4dc4" }
    --  use { "nvim-lualine/lualine.nvim", commit = "a52f078026b27694d2290e34efa61a6e4a690621" }
    --  use { "lewis6991/impatient.nvim", commit = "b842e16ecc1a700f62adb9802f8355b99b52a5a6" }


    "lewis6991/gitsigns.nvim",

    {"kdheepak/lazygit.nvim",
        lazy = false,
        keys = {
            {"<leader>gg", ":LazyGit<CR>", mode = "n" },
        },
    },

    {"leafOfTree/vim-svelte-plugin", lazy = false},

    --use("jose-elias-alvarez/null-ls.nvim")

    -- DAP
    --  use { "mfussenegger/nvim-dap" }
    --  use { "rcarriga/nvim-dap-ui" }
    --  use { "ravenxrz/DAPInstall.nvim" }
}
