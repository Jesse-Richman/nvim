return {
    "nvim-telescope/telescope.nvim",
    version = "0.1.x",
    keys = {
        { "<leader>ff", ":Telescope find_files<CR>", mode = "n" },
        { "<leader>ft", ":Telescope live_grep<CR>", mode = "n" },
        { "<leader>fp", ":Telescope projects<CR>", mode = "n" },
        { "<leader>fb", ":Telescope buffers<CR>", mode = "n" },
    }, 
}
