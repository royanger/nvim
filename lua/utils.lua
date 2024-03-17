-- Sourced from https://github.com/sho-87/dotfiles/blob/master/nvim/lua/utils.lua

local M = {}

-- Get colour of the mode
local colours = require("colours")
M.get_mode_colour = function()
  local mode = vim.api.nvim_get_mode()["mode"]

  if mode == "n" then
    return colours.normal
  elseif mode == "i" then
    return colours.insert
  elseif mode == "v" then
    return colours.visual
  elseif mode == "V" then
    return colours.visual
  elseif mode == "s" then
    return colours.visual
  elseif mode == "R" then
    return colours.replace
  elseif mode == "c" then
    return colours.command
  else
    return colours.textLight
  end
end

-- create colour gradient from hex values
M.create_gradient = function(start, finish, steps)
  local r1, g1, b1 =
      tonumber("0x" .. start:sub(2, 3)), tonumber("0x" .. start:sub(4, 5)), tonumber("0x" .. start:sub(6, 7))
  local r2, g2, b2 =
      tonumber("0x" .. finish:sub(2, 3)), tonumber("0x" .. finish:sub(4, 5)), tonumber("0x" .. finish:sub(6, 7))

  local r_step = (r2 - r1) / steps
  local g_step = (g2 - g1) / steps
  local b_step = (b2 - b1) / steps

  local gradient = {}
  for i = 1, steps do
    local r = math.floor(r1 + r_step * i)
    local g = math.floor(g1 + g_step * i)
    local b = math.floor(b1 + b_step * i)
    table.insert(gradient, string.format("#%02x%02x%02x", r, g, b))
  end

  return gradient
end

M.find_tsc_bin = function()
  local node_modules_tsc_binary = vim.fn.findfile("node_modules/.bin/tsc", ".;")

  if node_modules_tsc_binary ~= "" then
    return node_modules_tsc_binary
  end

  return "tsc"
end

M.find_nearest_tsconfig = function()
  local tsconfig = vim.fn.findfile("tsconfig.json", ".;")

  if tsconfig ~= "" then
    return tsconfig
  end

  return nil
end

return M
