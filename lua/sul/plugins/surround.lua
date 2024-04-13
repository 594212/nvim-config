local M = {
    "kylechui/nvim-surround",
    event = "VeryLazy",
}

function M.config()
    require("nvim-surround").setup {
        keymaps = { -- vim-surround style keymaps
            delete = "ds",
            change = "cs",
            visual = "s",
            normal = "s",
        },
    }
end

return M
