local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>/', builtin.git_files, {})
vim.keymap.set('n', '<leader>e', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<C-l>', builtin.lsp_document_symbols);

vim.keymap.set('n', '<leader>df',
    function()
        builtin.lsp_document_symbols {
            symbols = "function"
        }
    end
);


---@param lang string
local function find_language_file(lang)
    require('telescope.builtin').find_files({
        prompt_title = "< " .. string.upper(lang) .. " Files >",
        find_command = { 'rg', '--files', '--type', lang }
    })
end

vim.keymap.set('n', '<leader>lp', function() find_language_file('php') end);
