return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                theme = "kanagawa", -- Akan otomatis serasi dengan tema Anda
                component_separators = { left = "|", right = "|" },
                section_separators = { left = "", right = "" },
            },
        })
    end,
}
