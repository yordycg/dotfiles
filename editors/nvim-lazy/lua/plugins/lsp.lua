return {
  -- Mason
  {
    "williamboman/mason.nvim",
    opt = {
      ensure_installed = {
        -- web
        "stylua",
        "css-lsp",
        "tailwindcss-language-server",
        "typescript-language-server",
        -- lua
        "stylua",
        "selene",
        "luacheck",
        -- shell
        "bashls",
        "shfmt",
        -- c++
        "clangd",
        "clang-format",
      },
    },
  },
}
