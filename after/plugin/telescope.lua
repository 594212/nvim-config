local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>/', builtin.git_files, {})
vim.keymap.set('n', '<leader>e', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fp', '<cmd>lua search_php_files()<CR>');

function search_php_files()
	require('telescope.builtin').find_files({
		prompt_title = "< Php Files >",
		find_command = { 'rg', '--files', '--type', 'php' }
	})
end
