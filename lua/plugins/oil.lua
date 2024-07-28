return {
  'stevearc/oil.nvim',
  opts = {},
  -- dependencies = { { "echasnovski/mini.icons", opts = {} } },

  dependencies = { "nvim-tree/nvim-web-devicons" },

  vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
}
