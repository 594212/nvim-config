vim.g.mapleader = " ";

vim.keymap.set('i', '<A-Backspace>', '<C-w>');
vim.keymap.set('i', '<C-q>', '<esc>_<C-q>');
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex);
vim.keymap.set("t", "<leader><esc>", "<C-\\><C-N>");
vim.keymap.set("t", "<C-z>", function()
    vim.cmd.buffer('#')
end);

local function jump2term()
    if vim.fn.bufname("term://") == "" then
        return vim.cmd.terminal()
    else
        vim.cmd.buffer("term://")
    end
end

local function buf2term()
    if '' ~= vim.fn.getbufvar("%", "terminal_job_pid") then
        return vim.cmd('b#')
    else
        jump2term()
    end
end

vim.keymap.set("n", "<C-z>", buf2term);
vim.keymap.set("i", "<C-z>", jump2term);
vim.keymap.set({ 'v', 'n' }, "Y", '"+yy');
