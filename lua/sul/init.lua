vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.expandtab = true
vim.opt.spelllang = 'en_us'
vim.opt.spell = true

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.cmd("filetype plugin indent on")

require("sul.keymaps")
require("sul.windows")
require("sul.lazy")

vim.api.nvim_create_autocmd("FileType", {
    pattern = "php",
    callback = function()
        -- Use 'vim.opt_local' to set options local to the buffer
        vim.opt_local.autoindent = true
        vim.opt.smartindent = true

        vim.cmd("filetype plugin indent on")
    end,
})
