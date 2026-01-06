return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright", "ts_ls", "denols"},
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Register nvim-cmp
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            -- Lua setup
            vim.lsp.config('lua_ls', {
                setup = {
                    capabilities = capabilities
                },
            })

            -- Python setup
            vim.lsp.config('pyright', {
                setup = {
                    capabilities = capabilities
                },
            })

            -- Deno setup
            vim.lsp.config("denols", {
                setup = {
                    capabilities = capabilities,
                    root_dir = function(fname)
                        local deno_root = vim.fs.root(0, { "deno.json", "deno.jsonc" })(fname)
                        if deno_root then
                            return nil
                        end
                        return vim.fs.root(0, "package.json")(fname)
                    end,
                    single_file_support = false
                }
            })

            -- Run all config
            vim.lsp.enable('lua_ls')
            vim.lsp.enable('pyright')
            vim.lsp.enable('ts_ls')
        end,
    },
}
