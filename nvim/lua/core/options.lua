local opt = vim.opt

-- User Interface
opt.number = true
opt.relativenumber = true
opt.mouse = "a"
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.showmode = false
opt.wrap = false

-- Tab & Indentation
opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true

-- System & Performance
opt.clipboard = "unnamedplus"
opt.splitbelow = true
opt.splitright = true
opt.undofile = true
opt.updatetime = 300
opt.scrolloff = 8
