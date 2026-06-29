vim.g.mapleader = " "

require("config.options")
require("config.lazy")

vim.keymap.set(
    "n",
    "<leader>ff",
    "<cmd>Telescope find_files<cr>",
    { desc = "Find Files" }
)

vim.keymap.set(
    "n",
    "<leader>fg",
    "<cmd>Telescope live_grep<cr>",
    { desc = "Find Text" }
)

vim.keymap.set(
    "n",
    "<leader>fb",
    "<cmd>Telescope buffers<cr>",
    { desc = "Buffers" }
)

vim.keymap.set(
    "n",
    "<leader>w",
    "<cmd>w<cr>",
    { desc = "Save File" }
)
vim.keymap.set(
    "n",
    "<leader>q",
    "<cmd>q<cr>",
    { desc = "Quit" }
)

vim.keymap.set("n", 
    "K", 
    vim.lsp.buf.hover
)

vim.keymap.set("n", 
    "gd", 
    vim.lsp.buf.definition
)

vim.keymap.set("n", 
    "gr", 
    vim.lsp.buf.references
)

vim.keymap.set("n", 
    "<leader>rn", 
    vim.lsp.buf.rename
)
