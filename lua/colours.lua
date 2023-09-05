-- Sourced from https://github.com/sho-87/dotfiles/blob/master/nvim/lua/colours.lua

local C = {}

local function set_theme_colours(theme)
  if theme == "kanagawa" then
    local colors = require("kanagawa.colors").setup()
    local theme_colors = colors.palette
    C.normal = theme_colors.roninYellow
    C.insert = theme_colors.autumnRed
    C.visual = theme_colors.autumnGreen
    C.command = theme_colors.roninYellow
    C.replace = theme_colors.autumnRed
    C.comment = theme_colors.fujiGray
    C.overlay = theme_colors.crystalBlue
    C.sep = theme_colors.fujiGray
    C.status = "#282A2E"
    C.status_icon = { fg = theme_colors.fujiWhite, bg = theme_colors.dragonBlue }
    C.text = theme_colors.fujiGray
    C.textDark = theme_colors.sumiInk0
    C.textLight = theme_colors.fujiWhite
    C.bufPick = theme_colors.autumnRed
    C.bufSelected = theme_colors.fujiWhite
    C.bufVisible = theme_colors.dragonBlue
    C.bufModified = theme_colors.springGreen
    C.bufClose = theme_colors.autumnRed
  elseif theme == "rose-pine" then
    local theme_colors = require("rose-pine.palette")
    C.normal = "#af88dd"
    C.insert = theme_colors.gold
    C.visual = theme_colors.foam
    C.command = theme_colors.rose
    C.replace = theme_colors.love
    C.text = theme_colors.text
    C.comment = theme_colors.muted
    C.overlay = theme_colors.overlay
    C.sep = theme_colors.subtle
    C.status = "#282A2E"
  end
end

local current_theme = vim.api.nvim_exec("color", true)
set_theme_colours(current_theme)

return C
