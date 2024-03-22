vim.g.mapleader = " ";

vim.keymap.set('i', '<A-Backspace>', '<C-w>');
vim.keymap.set('i', '<C-q>', '<esc>_<C-q>');
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);
vim.keymap.set("t", "<C-z>", "<C-\\><C-N>");

vim.keymap.set({ 'v', 'n' }, "Y", '"+yy');
