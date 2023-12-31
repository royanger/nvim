local M = {
  "goolord/alpha-nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
}

local function get_extension(fn)
  local match = fn:match("^.+(%..+)$")
  local ext = ""
  if match ~= nil then
    ext = match:sub(2)
  end
  return ext
end

local function icon(fn)
  local nwd = require("nvim-web-devicons")
  local ext = get_extension(fn)
  return nwd.get_icon(fn, ext, { default = true })
end

function M.config()
  local headers = require('headers')
  -- adopted from https://github.com/AdamWhittingham/vim-config/blob/nvim/lua/config/startup_screen.lua
  local alpha = require("alpha")
  local path = require("plenary.path")
  local dashboard = require("alpha.themes.dashboard")
  local nvim_web_devicons = require("nvim-web-devicons")
  local cdir = vim.fn.getcwd()

  local function apply_gradient_hl(text)
    local gradient = require("utils").create_gradient("#DCA561", "#658594", #text)

    local lines = {}
    for i, line in ipairs(text) do
      local tbl = {
        type = "text",
        val = line,
        opts = {
          hl = "HeaderGradient" .. i,
          shrink_margin = false,
          position = "center",
        },
      }
      table.insert(lines, tbl)

      -- create hl group
      vim.api.nvim_set_hl(0, "HeaderGradient" .. i, { fg = gradient[i] })
    end

    return {
      type = "group",
      val = lines,
      opts = { position = "center" },
    }
  end

  local function get_header(headers)
    local header_text = headers[math.random(#headers)]
    return apply_gradient_hl(header_text)
  end

  -- Footer
  local function get_footer(quotes, width)
    local quote_text = quotes[math.random(#quotes)]

    local max_width = width or 35

    local tbl = {}
    for _, text in ipairs(quote_text) do
      local padded_text = require("utils").pad_string(text, max_width, "right")
      table.insert(tbl, { type = "text", val = padded_text, opts = { hl = "Comment", position = "center" } })
    end

    return {
      type = "group",
      val = tbl,
      opts = {},
    }
  end


  local function file_button(fn, sc, short_fn)
    short_fn = short_fn or fn
    local ico_txt
    local fb_hl = {}

    local ico, hl = icon(fn)
    local hl_option_type = type(nvim_web_devicons.highlight)
    if hl_option_type == "boolean" then
      if hl and nvim_web_devicons.highlight then
        table.insert(fb_hl, { hl, 0, 1 })
      end
    end
    if hl_option_type == "string" then
      table.insert(fb_hl, { nvim_web_devicons.highlight, 0, 1 })
    end
    ico_txt = ico .. "  "

    local file_button_el = dashboard.button(sc, ico_txt .. short_fn, "<cmd>e " .. fn .. " <CR>")
    local fn_start = short_fn:match(".*/")
    if fn_start ~= nil then
      table.insert(fb_hl, { "Comment", #ico_txt - 2, #fn_start + #ico_txt - 2 })
    end
    file_button_el.opts.hl = fb_hl
    return file_button_el
  end

  local default_mru_ignore = { "gitcommit" }

  local mru_opts = {
    ignore = function(path, ext)
      return (string.find(path, "COMMIT_EDITMSG")) or (vim.tbl_contains(default_mru_ignore, ext))
    end,
  }

  --- @param start number
  --- @param cwd string optional
  --- @param items_number number optional number of items to generate, default = 10
  local function mru(start, cwd, items_number, opts)
    opts = opts or mru_opts
    items_number = items_number or 9

    local oldfiles = {}
    for _, v in pairs(vim.v.oldfiles) do
      if #oldfiles == items_number then
        break
      end
      local cwd_cond
      if not cwd then
        cwd_cond = true
      else
        cwd_cond = vim.startswith(v, cwd)
      end
      local ignore = (opts.ignore and opts.ignore(v, get_extension(v))) or false
      if (vim.fn.filereadable(v) == 1) and cwd_cond and not ignore then
        oldfiles[#oldfiles + 1] = v
      end
    end

    local special_shortcuts = { "a", "s", "d" }
    local target_width = 35

    local tbl = {}
    for i, fn in ipairs(oldfiles) do
      local short_fn
      if cwd then
        short_fn = vim.fn.fnamemodify(fn, ":.")
      else
        short_fn = vim.fn.fnamemodify(fn, ":~")
      end

      if #short_fn > target_width then
        short_fn = path.new(short_fn):shorten(1, { -2, -1 })
        if #short_fn > target_width then
          short_fn = path.new(short_fn):shorten(1, { -1 })
        end
      end

      local shortcut = ""
      if i <= #special_shortcuts then
        shortcut = special_shortcuts[i]
      else
        shortcut = tostring(i + start - 1 - #special_shortcuts)
      end

      local file_button_el = file_button(fn, " " .. shortcut, short_fn)
      tbl[i] = file_button_el
    end
    return {
      type = "group",
      val = tbl,
      opts = {},
    }
  end

  local section_mru = {
    type = "group",
    val = {
      {
        type = "text",
        val = "Recent files",
        opts = {
          hl = "SpecialComment",
          shrink_margin = false,
          position = "center",
        },
      },
      { type = "padding", val = 1 },
      {
        type = "group",
        val = function()
          return { mru(1, cdir, 9) }
        end,
        opts = { shrink_margin = false },
      },
    },
  }

  local buttons = {
    type = "group",
    val = {
      { type = "text",    val = "Menu", opts = { hl = "SpecialComment", position = "center" } },
      { type = "padding", val = 1 },
      dashboard.button("n", "  New File", ":ene <BAR> startinsert <CR>"),
      dashboard.button("f", "  Project Files", ":lua require('user/funs').project_files()<CR>"),
      dashboard.button("e", "  File Browser", ":Neotree filesystem reveal float<CR>"),
      dashboard.button("r", "  Grep Files", ":Telescope live_grep <CR>"),
      dashboard.button("g", "  Lazy Git", ":LazyGit<CR>"),
      dashboard.button("p", "  Manage Plugins", ":Lazy <CR>"),
      dashboard.button("q", "  Quit", ":qa<CR>"),
    },
    position = "center",
  }

  local opts = {
    layout = {
      { type = "padding", val = 4 },
      get_header({ headers.panda, headers.batman }),
      { type = "padding", val = 2 },
      buttons,
      { type = "padding", val = 2 },
      section_mru,
    },
    opts = {
      margin = 5,
    },
  }

  alpha.setup(opts)
end

return M
