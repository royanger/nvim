return {
  'numToStr/Comment.nvim',
  config = function()
    local pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
    require('Comment').setup({
      toggler = {
        line = 'gcc',
        block = 'gbc'
      },
      opleader = {
        line = 'gc',
        block = 'gb'
      }
    })
  end
}
