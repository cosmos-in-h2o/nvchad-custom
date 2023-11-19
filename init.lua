-------------------------------------- custom ------------------------------------------
-- copy高亮
vim.api.nvim_create_autocmd({ "TextYankPost" }, {
    pattern = { "*" },
    callback = function()
        vim.highlight.on_yank {
            timeout = 300,
        }
    end,
})

-- 折叠相关
vim.o.foldmethod = "expr"
vim.o.foldexpr = "nvim_treesitter#foldexpr()"
vim.o.foldenable = false
vim.o.foldlevel = 99

--相对行号
vim.opt.relativenumber = true

-- Indenting
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4

-- 字体
vim.o.guifont = "JetBrainsMono Nerd Font:h20"
