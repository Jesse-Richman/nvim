return {
    "mason-org/mason-lspconfig.nvim",
    lazy = false,
    opts = {},
    dependencies = {
        { "mason-org/mason.nvim", opts = {}, lazy = false },
        "neovim/nvim-lspconfig",
    },
}
