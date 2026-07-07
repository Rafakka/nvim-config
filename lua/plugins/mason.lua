return {
    {
        "williamboman/mason.nvim",

        config = function()
            require("mason").setup()
        end,
    },

    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",

        dependencies = {
            "williamboman/mason.nvim",
        },

        config = function()
            require("mason-tool-installer").setup({
                ensure_installed = {
                    "pyright",
                    "vtsls",
                },

                run_on_start = true,
                auto_update = false,
            })
        end,
    },
}
