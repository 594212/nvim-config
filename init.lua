require("sul")

local function map(mode, lhs, rhs, opts)
  local options = { noremap=true, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map('i', '<A-Backspace>', '<C-w>');
map('i', '<C-q>', '<esc>_<C-q>');

map('n', '<leader>fp', '<cmd>lua search_php_files()<CR>')

function search_php_files()
  require('telescope.builtin').find_files({
    prompt_title = "< Php Files >",
    find_command = {'rg', '--files', '--type', 'php'}
  })
end
