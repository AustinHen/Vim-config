require("test")
require("remap") 
require("color")
require("packer")
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true 
vim.g.ctags_bin = "universal-ctags"
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.cmd("silent! :ctags")
vim.opt.scrolloff = 8 
--for ufo
require('ufo').setup()
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
--treesitter
require'nvim-treesitter.configs'.setup {
    ensure_installed = {'lua', 'vim', 'c', 'cpp', 'python'},
    sync_install = false;
    auto_install = true, 
    highlight = {
        enable = true,
        disable = {'cpp', 'c'},
    },
}




