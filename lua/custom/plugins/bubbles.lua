return {


  -- Set lualine as statusline
  'nvim-lualine/lualine.nvim',
  -- See `:help lualine.txt`
  opts = {
    options = {
      icons_enabled = false,
    },
  },
  config = function()
    require('lualine').setup {
      options = {
        theme = {
          normal = {
            a = { fg = "#000000", bg = "#d183e8" },
            b = { fg = "#c6c6c6", bg = "#303030" },
            c = { fg = "#000000", bg = "#000000" },
          },

          insert = { a = { fg = "#000000", bg = "#80a0ff" } },
          visual = { a = { fg = "#000000", bg = "#79dac8" } },
          replace = { a = { fg = "#000000", bg = "#ff5189" } },
          command = { a = { fg = "#000000", bg = "#ffffff" } },

          inactive = {
            a = { fg = "#c6c6c6", bg = "#000000" },
            b = { fg = "#c6c6c6", bg = "#000000" },
            c = { fg = "#000000", bg = "#000000" },
          },
        },

        component_separators = '|',
        section_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = {
          { 'mode', separator = { left = '' }, right_padding = 2 },
        },
        lualine_b = { 'filename', 'branch', 'diff', 'diagnostics', {
          -- 'mode', separator = { right = '' }
        } },
        lualine_c = {},
        lualine_x = { 'searchcount', 'encoding', 'fileformat' },
        lualine_y = { 'filetype', 'progress' },
        lualine_z = {
          { 'location', separator = { right = '' }, left_padding = 2 },
        },
      },
      inactive_sections = {
        lualine_a = { 'filename' },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { 'location' },
      },
      tabline = {},
      extensions = {},
    }
  end
}
