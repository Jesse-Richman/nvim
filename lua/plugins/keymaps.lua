-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
local wk = require("which-key")

wk.add({

    { "<leader>c", group = "code" },
    { "<leader>d", group = "debug" },
    { "<leader>f", group = "file" },

    { ";", ":", desc = "Enter command mode", silent = false },
    { "<ESC>", "<cmd>nohlsearch<CR>", desc = "Clear highlights" },
    { "<leader>e", ":Ex<CR>", desc = "File Explorer" },
    { "<leader>t", "<cmd>silent !tmux neww tmux-sessionizer<CR>", desc = "New tmux session" },
    { "<leader>cf", vim.lsp.buf.format, desc = "Format" },
    { "<leader>cr", ":LspRestart<CR>", desc = "Restart LSP" },

    -- Better window navigation
    { "<A-h>", "<C-w>h", desc = "Move window focus left" },
    { "<A-j>", "<C-w>j", desc = "Move window focus down" },
    { "<A-k>", "<C-w>k", desc = "Move window focus up" },
    { "<A-l>", "<C-w>l", desc = "Move window focus right" },

    { "<C-d>", "<C-d>zz", desc = "Scroll down half a page and center" },
    { "<C-u>", "<C-u>zz", desc = "Scroll up half a page and center" },
    { "N", "Nzzzv", desc = "Find previous and center" },
    { "n", "nzzzv", desc = "Find next and center" },

    -- Resize with arrows
    { "<C-Down>", ":resize +2<CR>", desc = "" },
    { "<C-Left>", ":vertical resize -2<CR>", desc = "" },
    { "<C-Right>", ":vertical resize +2<CR>", desc = "" },
    { "<C-Up>", ":resize -2<CR>", desc = "" },

    -- better copy/paste
    { "<leader>Y", "\"+Y", desc = "" },
    { "<leader>s", ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>", desc = "" },
    { "<leader>y", "\"+y", desc = "" },

    -- visual mode
    { "<", "<gv", desc = "", mode = "v"},
    { "<leader>d", "\"_d", desc = "", mode = "v" },
    { "<leader>y", "\"+y", desc = "", mode = "v" },
    { ">", ">gv", desc = "", mode = "v" },
    { "p", "\"_dP", desc = "", mode = "v" },

    -- visual block mode
    { "<leader>p", desc = '"_dP', mode = "x" },
})

return {}
