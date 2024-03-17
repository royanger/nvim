local notify = require('notify')

vim.notify = function(message, level, opts)
	return notify(message, level, opts)
end
