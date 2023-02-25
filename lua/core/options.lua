local opt = vim.opt

-- row number
opt.relativenumber = true
opt.number = true

-- indent
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- dewrap
opt.wrap = false

-- cursor line
opt.cursorline = true

-- enable mouse
opt.mouse:append("a")

-- enable system clipboard
opt.clipboard:append("unnamedplus")
opt.cmdheight=3

-- default split window
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- view
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-moon]]
