vim.keymap.set("t", "<C-z>", function()
    vim.cmd.buffer('#')
end);

local function jump2term()
    if vim.fn.bufname("term://") == "" then
        return vim.cmd.terminal(
            'powershell.exe -NoExit -Command "&{Import-Module """C:\\Program Files\\Microsoft Visual Studio\\2022\\Community\\Common7\\Tools\\Microsoft.VisualStudio.DevShell.dll"""; Enter-VsDevShell d6caeb67 -SkipAutomaticLocation -DevCmdArguments """-arch=x64 -host_arch=x64"""}"')
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
