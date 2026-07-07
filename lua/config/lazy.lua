local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "folke/tokyonight.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("tokyonight")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
    },
    {
        "nvim-lua/plenary.nvim",
    },

    {
        "nvim-telescope/telescope.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },
    {
    "WhoIsSethDaniel/mason-tool-installer.nvim",
        dependencies = {
        "williamboman/mason.nvim",
        },
    },
    {
        "folke/which-key.nvim",
    },
    {
    "williamboman/mason.nvim",

    config = function()
        require("mason").setup()

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
    {
    "neovim/nvim-lspconfig",
    
    config = function()
        vim.lsp.enable("pyright")
        vim.lsp.enable("vtsls")
    end,

    },
    {
    "Saghen/blink.cmp",

    dependencies = {
        "rafamadriz/friendly-snippets",
    },

    version = "*",

    opts = {
        keymap = {
            preset = "default",
        },

        appearance = {
            nerd_font_variant = "mono",
        },

        completion = {
            documentation = {
                auto_show = true,
            },
        },

        sources = {
            default = { "lsp", "path", "snippets", "buffer" },
        },
    },

    opts_extend = {
        "sources.default"
    },
    
},

{
    "lewis6991/gitsigns.nvim",

    config = function()
        require("gitsigns").setup()
    end,
},

{
    "numToStr/Comment.nvim",

    config = function()
        require("Comment").setup()
    end,
},

{
    "windwp/nvim-autopairs",

    config = function()
        require("nvim-autopairs").setup()
    end,
},

})
