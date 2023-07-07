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
        -- vim.cmd([[:hi normal guibg=000000]])
        -- vim.cmd([[:hi NonText guibg=000000]])
        -- vim.cmd([[highlight Normal ctermbg=none]])
        -- vim.cmd([[highlight NonText ctermbg=none]])
        require("tokyonight").setup({
            transparent = true,
        });
    end
  },
}
