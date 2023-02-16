return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opt = {
        style = "rose-pine",
        transparent = true,
    },
    config = function()
        vim.cmd([[colorscheme tokyonight]])
        require("tokyonight").setup({
            transparent = true,
        });
    end
  },
}
