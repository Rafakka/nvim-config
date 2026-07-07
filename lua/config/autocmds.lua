local autocmd = vim.api.nvim_create_autocmd

-------------------------------------------------
-- Highlight ao copiar
-------------------------------------------------

autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank()
    end,
})

-------------------------------------------------
-- Restaurar última posição do cursor
-------------------------------------------------

autocmd("BufReadPost", {
    callback = function()
        local mark = vim.api.nvim_buf_get_mark(0, '"')
        local line_count = vim.api.nvim_buf_line_count(0)

        if mark[1] > 0 and mark[1] <= line_count then
            vim.api.nvim_win_set_cursor(0, mark)
        end
    end,
})

-------------------------------------------------
-- Remover espaços em branco ao salvar
-------------------------------------------------

autocmd("BufWritePre", {
    callback = function()
        local view = vim.fn.winsaveview()

        vim.cmd([[%s/\s\+$//e]])

        vim.fn.winrestview(view)
    end,
})

-------------------------------------------------
-- Recarregar arquivo se mudou fora do Neovim
-------------------------------------------------

autocmd({ "FocusGained", "BufEnter" }, {
    command = "checktime",
})

-------------------------------------------------
-- Fechar janelas auxiliares com q
-------------------------------------------------

autocmd("FileType", {
    pattern = {
        "help",
        "qf",
        "lspinfo",
        "man",
        "checkhealth",
    },

    callback = function(event)
        vim.keymap.set(
            "n",
            "q",
            "<cmd>close<CR>",
            {
                buffer = event.buf,
                silent = true,
            }
        )
    end,
})
