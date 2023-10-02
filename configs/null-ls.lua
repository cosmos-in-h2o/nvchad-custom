local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {
    -- Lua
    b.formatting.stylua,
    -- cpp
    b.formatting.clang_format,
    -- rust
    b.formatting.rustfmt,
}

null_ls.setup {
    debug = true,
    sources = sources,
}
