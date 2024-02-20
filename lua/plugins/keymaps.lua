-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",
local wk = require("which-key")
wk.register({
  ["<leader>f"] = { name = "+file" },
  ["<leader>c"] = { name = "+code" },
  ["<leader>d"] = { name = "+debug" },


  [";"] = { ":", "Enter command mode", silent=false },
  ["<ESC>"] =  { "<cmd>nohlsearch<CR>", "Clear highlights" },
  ["<leader>e"] = { ":Ex<CR>", "File Explorer" },
  ["<leader>t"] = { "<cmd>silent !tmux neww tmux-sessionizer<CR>", "New tmux session"},
  ["<leader>cf"] = { vim.lsp.buf.format, "Format"},
  ["<leader>cr"] = { ":LspRestart", "Restart LSP"},

  -- Better window navigation
  ["<A-h>"] = { "<C-w>h", "Move window focus left" },
  ["<A-j>"] = { "<C-w>j", "Move window focus down" },
  ["<A-k>"] = { "<C-w>k", "Move window focus up" },
  ["<A-l>"] = { "<C-w>l", "Move window focus right" },

  ["<C-d>"] = { "<C-d>zz", "Scroll down half a page and center" },
  ["<C-u>"] = { "<C-u>zz", "Scroll up half a page and center" },
  ["n"] = { "nzzzv", "Find next and center" },
  ["N"] = { "Nzzzv", "Find previous and center" },

  -- Resize with arrows
  ["<C-Up>"] = { ":resize -2<CR>" },
  ["<C-Down>"] = { ":resize +2<CR>" },
  ["<C-Left>"] = { ":vertical resize -2<CR>" },
  ["<C-Right>"] = { ":vertical resize +2<CR>" },

  -- better copy/paste
  ["<leader>y"] = { "\"+y" },
  ["<leader>Y"] = { "\"+Y" },
  ["<leader>d"] = { "\"_d" },
  ["<leader>s"] = { ":%s/\\<<C-r><C-w>\\>/<C-r><C-w>/gI<Left><Left><Left>" },
})

-- visual mode
wk.register({
  ["p"] = {'"_dP'},
  ["<leader>y"] = { "\"+y" },
  ["<leader>d"] = { "\"_d" },
  ["<"] = { "<gv" },
  [">"] = { ">gv" },
}, { mode="v"})

-- visual block mode
wk.register({
  ["<leader>p"] = {"\"_dP"},
}, { mode="x"})

return {}
