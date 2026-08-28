-- ==============================================================================
-- 1. General Options
-- ==============================================================================
vim.g.mapleader = " "
vim.opt.background = "light"
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true

-- ==============================================================================
-- 2. Custom Grayscale (White Background) Colorscheme
-- ==============================================================================
local function setup_grayscale_theme()
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end
  vim.g.colors_name = "grayscale_light"

  local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Palette
  local bg       = "#FFFFFF"
  local fg       = "#000000"
  local g_dark   = "#333333"
  local g_mid    = "#777777"
  local g_light  = "#E0E0E0"
  local g_vlight = "#F4F4F4"

  -- Editor UI
  hl("Normal", { fg = fg, bg = bg })
  hl("NormalFloat", { fg = fg, bg = g_vlight })
  hl("FloatBorder", { fg = g_mid, bg = g_vlight })
  hl("CursorLine", { bg = g_vlight })
  hl("CursorLineNr", { fg = fg, bold = true })
  hl("LineNr", { fg = g_mid })
  hl("Visual", { bg = g_light })
  hl("StatusLine", { fg = fg, bg = g_light })
  hl("StatusLineNC", { fg = g_mid, bg = g_vlight })
  hl("Pmenu", { fg = fg, bg = g_vlight })
  hl("PmenuSel", { fg = bg, bg = fg })

  -- Grayscale Syntax
  hl("Comment", { fg = g_mid, italic = true })
  hl("Constant", { fg = fg, bold = true })
  hl("String", { fg = g_dark })
  hl("Character", { fg = g_dark })
  hl("Number", { fg = g_dark })
  hl("Boolean", { fg = fg, bold = true })
  hl("Identifier", { fg = fg })
  hl("Function", { fg = fg, bold = true })
  hl("Statement", { fg = fg, bold = true })
  hl("Keyword", { fg = fg, bold = true })
  hl("PreProc", { fg = g_dark, bold = true })
  hl("Type", { fg = fg, bold = true, underline = true })
  hl("Special", { fg = g_dark })
  hl("Underlined", { underline = true })
end

setup_grayscale_theme()
