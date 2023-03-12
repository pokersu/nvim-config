local opt = vim.opt

-- row number
-- opt.relativenumber = true
opt.number = true

-- indent
opt.tabstop = 4
opt.shiftwidth = 4
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
opt.hlsearch = true
opt.incsearch = true

-- timeout
opt.timeoutlen=200
opt.ttimeoutlen=0

-- view
opt.background=ddark
opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-moon]]

