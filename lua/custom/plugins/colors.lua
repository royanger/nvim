return {
  -- themes
  {
    "lalitmee/cobalt2.nvim",
    event = { "ColorSchemePre" }, -- if you want to lazy load
    dependencies = { "tjdevries/colorbuddy.nvim" },
    init = function()
      -- require("colorbuddy").colorscheme("cobalt2")
    end,
  },
  {
    'olivercederborg/poimandres.nvim',
    config = function()
      require('poimandres').setup {
        -- vim.cmd.colorscheme 'poimandres'
      }
    end,
  },
  {
    'navarasu/onedark.nvim',
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme 'onedark'
    end,
  },
  {
    'EdenEast/nightfox.nvim',
    config = function()
      require('nightfox').setup {
        terminal_colurs = true,
        styles = {
          comments = 'italic',
          keywords = 'bold',
          types = 'italic,bold'
        }

      }
      -- vim.cmd.colorscheme 'duskfox'
      -- vim.cmd.colorscheme 'carbonfox'
    end,
  },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup {
        terminal_colurs = true,
        styles = {
          comments = 'italic',
          keywords = 'bold',
          types = 'italic,bold'
        },
        -- wave | dragon | lotus
        theme = "wave",
      }
      -- vim.cmd.colorscheme 'kanagawa'
      -- vim.cmd.colorscheme 'carbonfox'
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      -- storm | moon | night | day
      style = "night",
      terminal_colurs = true,
      comments = { italic = true },
      keywords = { bold = true },

    },
    config = function()
      -- vim.cmd.colorscheme 'tokyonight'
    end
  },
  {
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
  },
  {
    "nyoom-engineering/oxocarbon.nvim",
    config = function()
      -- vim.cmd.colorscheme("oxocarbon")
    end
  },
  {
    "fenetikm/falcon",
    config = function()
      --  vim.cmd.colorscheme("falcon")
    end
  },
  {
    "kyazdani42/blue-moon",
    config = function()
      vim.opt.termguicolors = true
      -- vim.cmd.colorschem("blue-moon")
    end
  },
  {
    'lalitmee/cobalt2.nvim',
    requires = 'tjdevries/colorbuddy.nvim',
    config = function()
      -- vim.cmd.colorscheme("cobalt2")
    end
  },
  {
    "sainnhe/gruvbox-material",
    config = function()
      vim.g.material_style = "dark"
      -- vim.cmd.colorscheme("gruvbox-material")
    end
  },
  {
    "marko-cerovac/material.nvim",
    config = function()
      vim.g.material_style = "palenight"
      -- vim.cmd.colorscheme("material")
    end
  },
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("moonfly")
    end

  },
  {
    "bluz71/vim-nightfly-colors",
    name = "nightfly",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd.colorscheme("nightfly")
    end

  },
  {
    'shaunsingh/nord.nvim',
    config = function()
      -- vim.cmd.colorscheme("nord")
    end
  },
  {
    "sainnhe/sonokai",
    config = function()
      vim.g.style = "andromeda"
      -- vim.cmd.colorscheme("sonokai")
    end
  },
  {
    "tiagovla/tokyodark.nvim",
    opts = {
      -- custom options here
    },
    config = function(_, opts)
      require("tokyodark").setup(opts) -- calling setup is optional
      -- vim.cmd.colorscheme("tokyodark")
    end,
  }

}
