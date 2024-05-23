local opt = vim.opt

-- These optiona are different from the defaults
opt.colorcolumn = "80" -- str:  Show col for max line length
opt.conceallevel = 0 -- Hide * markup for bold and italic
opt.encoding = "utf8" -- str:  String encoding to use
opt.incsearch = true -- bool: Use incremental search
opt.hlsearch = false -- bool: Highlight search matches
opt.scrolloff = 10 -- Lines of context
opt.shiftwidth = 3 -- Size of an indent
opt.softtabstop = 3 -- Tabsize

-- Can I make this below OS specific?
opt.spellfile = "/cygdrive/c/Users/avena/AppData/Local/nvim/spell/en.utf-8.add"

opt.tabstop = 3 -- Number of spaces tabs count for
