---@type MappingsTable
local M = {}

M.general = {
    n = {
        -- 分割和移动窗口
        ["<leader>sw"] = { "<cmd>split<CR>", "split a window" },
        ["<leader>vw"] = { "<cmd>vsplit<CR>", "split a window" },
        ["<leader>cw"] = { "<cmd>close<CR>", "close the window" },
        ["<leader>mwl"] = { "<C-W>L", "move the window to the left" },
        ["<leader>mwh"] = { "<C-W>H", "move the window to the right" },
        ["<leader>mwj"] = { "<C-W>J", "move the window to the dows" },
        ["<leader>mwk"] = { "<C-W>K", "move the window to the up" },
        -- 其他
        [";"] = { ":", "enter command mode", opts = { nowait = true } },
        ["<leader>nl"] = { "<cmd>nohl<CR>", "no high lights" },
        ["cm"] = { "@", "to invoke marco" },
    },
    v = {
        [">"] = { ">gv", "indent" },
    },
}

M.tabufline = {
    plugin = true,

    n = {
        -- cycle through buffers
        ["L"] = {
            function()
                require("nvchad.tabufline").tabuflineNext()
            end,
            "Goto next buffer",
        },

        ["H"] = {
            function()
                require("nvchad.tabufline").tabuflinePrev()
            end,
            "Goto prev buffer",
        },

        -- close buffer + hide terminal buffer
        ["<leader>x"] = {
            function()
                require("nvchad.tabufline").close_buffer()
            end,
            "Close buffer",
        },
    },
}
M.lspconfig = {
    n = {
        ["<leader>kk"] = {
            function()
                vim.lsp.buf.hover()
            end,
            "lsp hover",
        },
    },
}

M.nvimtree = {
    n = {
        ["<leader>tr"] = { "<cmd>NvimTreeRefresh<CR>", "refresh tree" },
        ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    },
}

M.flash = {
    n = {
        ["<leader>ss"] = {
            function()
                require("flash").jump()
            end,
            "invoke flash",
        },
    },
    v = {
        ["<leader>ss"] = {
            function()
                require("flash").jump()
            end,
            "invoke flash",
        },
    },
    c = {
        ["<leader>ss"] = {
            function()
                require("flash").toggle()
            end,
            "invoke flash",
        },
    },
}

M.dap = {
    n = {
        ["<leader>db"] = { "<cmd>DapToggleBreakpoint<CR>", "add breakpoint at line" },
        ["<leader>dr"] = { "<cmd>DapContinue<CR>", "start or continue the debugger" },
    },
}

-- more keybinds!

return M
