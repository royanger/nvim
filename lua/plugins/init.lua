-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

return {
  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  -- Which Key and custom labelling
  'folke/which-key.nvim',

  -- Check types in project
  'dmmulroy/tsc.nvim',

  -- Format on save with support for prettierd
  "elentok/format-on-save.nvim",

  -- Notification window, used with tsc.nvim
  "rcarriga/nvim-notify",
}
