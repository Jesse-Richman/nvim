return {
    "folke/zen-mode.nvim",
    opts = {
        window = {
            width = 90,
            options = {
                number = true,
                relativenumber = true,
            },
        },
    },
    keys = {
        {"<leader>zz", function() require("zen-mode").toggle() end, mode = "n"},
    },
}
