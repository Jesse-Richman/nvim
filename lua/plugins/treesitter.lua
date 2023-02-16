return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function ()
        require("nvim-treesitter").setup({
            ensure_installed = { "help", "javascript", "typescript", "python", "lua", "markdown", "markdown_inline" },
            sync_install = false,
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
        })
    end,
}
