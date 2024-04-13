vim.api.nvim_command("autocmd TermOpen * startinsert")       -- starts in insert mode
vim.api.nvim_command("autocmd TermOpen * setlocal nonumber") -- no numbers
vim.api.nvim_command("autocmd TermEnter * setlocal signcolumn=no")

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
        vim.cmd.buffer('#')
    else
        jump2term()
    end
end

-- vim.keymap.set("n", "<C-z>", buf2term);
-- vim.keymap.set("i", "<C-z>", jump2term);
