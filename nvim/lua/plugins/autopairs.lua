return {
    "windwp/nvim-autopairs",
    event = "InsertEnter", -- Plugin hanya dimuat saat Anda masuk ke mode Insert
    config = function()
        require("nvim-autopairs").setup({
            check_ts = true, -- Mengintegrasikan dengan Treesitter agar lebih pintar
        })
    end,
}
