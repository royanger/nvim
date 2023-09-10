vim.api.nvim_create_user_command('ReloadTheme', function()
	local execute = function()
		vim.api.nvim_command('write')
		vim.api.nvim_command(":silent !colorgen-nvim ~/code/batman/batman.toml")
		vim.api.nvim_command(":silent Lazy reload batman")
	end

	execute()
end, { nargs = "*" })


vim.keymap.set('n', "<leader>tu", ":ReloadTheme<CR>", {})
