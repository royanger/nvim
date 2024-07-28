return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
    "3rd/image.nvim",
  },
  config = function()
    require('neo-tree').setup({
      popup_border_style = "rounded",
      enable_git_status = true,
      enable_diagnostics = true,
      filesystem = {
        follow_current_file = {
          enabled = true
        },
        filtered_items = {

          visible = false,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_hidden = false,
        }
      }

    })
    vim.keymap.set("n", "<C-b>", ":Neotree filesystem reveal right toggle<Enter>")
    vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal float toggle<Enter>")
  end,
}
