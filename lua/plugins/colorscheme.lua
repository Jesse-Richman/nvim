return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
        transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },

    },
    config = function()
        -- set colorscheme in vim
        vim.cmd([[colorscheme tokyonight]])
    end
  },
}
