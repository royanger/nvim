return {
    "catppuccin/nvim",
    priority = 1000,
    config = function()
      require('catppuccin').setup {
        flavour = "mocha",
        integrations = {
          neotree = true,
        },
        styles = {
          comments = { "italic" },
          keywords = { "bold" },
          types = { "italic", "bold" }
        },
        compile_path = vim.fn.stdpath "cache" .. "../catppuccin"
      }
      vim.cmd.colorscheme "catppuccin"
    end
  }

