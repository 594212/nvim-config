require 'nvim-treesitter.configs'.setup {
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "php", "phpdoc", "c", "lua", "luadoc", "vim", "vimdoc" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,
    highlight = {
        enable = true,
        disable = { "latex" },
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = "<CR>",
            node_incremental = "<CR>",
            scope_incremental = "<S-CR>",
            node_decremental = "<BS>",
        },
    },
}
