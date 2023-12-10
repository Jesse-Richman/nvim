return {
    "nvim-telescope/telescope.nvim",
    version = "0.1.x",
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { "<leader>ff", ":Telescope find_files<CR>", mode = "n" , desc = "Find files"},
        { "<leader>fr", ":Telescope oldfiles<CR>", mode = "n", desc = "Open Recent File"},
        { "<leader>ft", ":Telescope live_grep<CR>", mode = "n", desc = "Live Grep" },
        { "<leader>fp", ":Telescope projects<CR>", mode = "n", desc = "Search Projects" },
        { "<leader>fb", ":Telescope buffers<CR>", mode = "n", desc = "Search Buffers" },
        { "<leader>fn", ":enew<cr>", mode = "n", desc = "New File" },
        { "<leader>fx", ":!chmod +x %<CR>", mode = "n", desc = "Make file executable" },
    },
}
