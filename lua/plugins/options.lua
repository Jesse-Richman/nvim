--vim.opt.guicursor = ""
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.termguicolors = true
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"
-- vim.g.netrw_keepdir = 0
-- leader key is already mapped in the main init.lua file
vim.filetype.add({ extension = { templ = "templ" } })
-- vim.api.nvim_create_autocmd("BufEnter", { pattern = "*.templ", callback = function() vim.cmd("TSBufEnable highlight") end }) 
return {}
