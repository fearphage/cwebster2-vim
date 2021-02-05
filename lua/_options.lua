local o = vim.o
local wo = vim.wo
local bo = vim.bo

o.shell = "/bin/zsh"
o.updatetime = 300
o.foldlevelstart = 99
o.termguicolors = true
o.ignorecase = true
o.smartcase = true
o.confirm = true
o.scrolloff = 5
o.shiftround = true
o.incsearch = true
o.splitright = true
o.splitbelow = true
o.wildmenu = true
o.wildmode = 'full'
o.hlsearch = true
o.showmode = false
o.showmatch = true
o.matchtime = 5
o.inccommand = 'split'
o.shortmess = vim.o.shortmess .. 'c'
o.textwidth = 80
o.formatoptions = o.formatoptions:gsub('[cro]','')
o.colorcolumn = '100'
o.completeopt = "menuone,noinsert,noselect"
o.clipboard = "unnamedplus,unnamed"
o.linebreak = true
o.foldmethod='expr'
o.foldexpr='nvim_treesitter#foldexpr()'
o.cmdheight = 2
o.hidden = true
o.backspace = "indent,eol,start"
o.backup = false
o.diffopt = "filler,internal,algorithm:histogram,indent-heuristic"
o.lazyredraw = true
o.pastetoggle = "<F11>"
o.previewheight = 25
o.ttimeoutlen = 50
o.viewoptions = "cursor,folds,options,unix,slash"
o.virtualedit = "onemore"
o.writebackup = false

bo.autoindent = false
o.autoindent = false
bo.autoread = true
o.autoread = true
bo.tabstop = 2
o.tabstop = 2
bo.shiftwidth = 2
o.shiftwidth = 2
bo.softtabstop = 2
o.softtabstop = 2
bo.expandtab = true
o.expandtab = true
bo.smartindent = true
o.smartindent = true

wo.signcolumn = "yes"
wo.number = true
wo.cursorline = true
wo.fillchars = "vert:│"
wo.list = true
wo.listchars = "tab:▷ ,trail:·,extends:◣,precedes:◢,nbsp:○"
o.list = true
o.listchars = "tab:▷ ,trail:·,extends:◣,precedes:◢,nbsp:○"

