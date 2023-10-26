-- [[ Setting options ]]
-- See `:help vim.o`

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.shortmess:append({ I = true })

-- vim.o.foldmethod = 'indent'

vim.o.clipboard = "unnamedplus"

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

vim.o.wrap = false
vim.o.linebreak = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.wo.signcolumn = 'yes'

-- Set colorscheme
vim.o.termguicolors = true
vim.cmd [[colorscheme onedark]]
-- vim.cmd('highlight Normal guibg=#1F2533 ctermbg=237')
-- vim.cmd('highlight NonText guibg=#1F2533')

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'
