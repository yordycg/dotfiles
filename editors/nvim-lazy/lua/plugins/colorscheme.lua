return {
  -- catppuccin
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      transparent_background = true,
    },
  },
  -- dracula
  {
    "Mofiqul/dracula.nvim",
  },
  -- onedark
  {
    "navarasu/onedark.nvim",
    priority = 1000,
    opts = {
      style = "deep",
      -- transparent = true,
    },
  },
  -- material
  {
    "marko-cerovac/material.nvim",
    lazy = false,
    priority = 1000,
    init = function()
      vim.g.material_style = "darker"
    end,
  },
  -- minimal
  {
    "Yazeed1s/minimal.nvim",
    lazy = true,
  },
  -- vesper
  {
    "datsfilipe/vesper.nvim",
  },
  -- zephyr
  {
    "nvimdev/zephyr-nvim",
  },
  -- TRANSPARENT
  {
    "xiyaowong/transparent.nvim",
  },
  -- COLORSCHEME
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
