return {
  'ahmedkhalf/project.nvim',
  config = function()
    require('telescope').load_extension('projects')
    -- vim.keymap.set('n', '<leader>pf', '')
  end
}
