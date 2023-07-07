return {
    "nvim-telescope/telescope.nvim",
    version = "0.1.x",
    keys = {
        { "<leader>ff", ":Telescope find_files<CR>", mode = "n" ,
            desc = "Find files"},
        { "<leader>ft", ":Telescope live_grep<CR>", mode = "n",
            desc = "Grep" },
        { "<leader>fp", ":Telescope projects<CR>", mode = "n",
            desc = "Search Projects" },
        { "<leader>fb", ":Telescope buffers<CR>", mode = "n",
            desc = "Search buffers" },
    },
}
