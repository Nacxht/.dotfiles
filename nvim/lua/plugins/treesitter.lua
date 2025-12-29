return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local status, configs = pcall (require, "nvim-treesitter.configs")
        if not status then return end

        configs.setup({
            ensure_installed = { "lua", "vim", "vimdoc", "javascript", "python" },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
            },
            indent = { enable = true },
        })
    end,
}
