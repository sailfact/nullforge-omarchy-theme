-- nullforge lualine theme
-- Place at: ~/.config/nvim/lua/lualine/themes/nullforge.lua
-- Usage:
--   require("lualine").setup({ options = { theme = "nullforge" } })

local bg_solid  = "#0a1420"
local bg        = "NONE"
local bg2       = "#1a2d40"
local bg3       = "#243344"
local fg        = "#f2ece6"
local fg_muted  = "#7a9bb8"
local blue      = "#7a9bb8"
local green     = "#8fb27e"
local peach     = "#e8a882"
local red       = "#d97264"
local orange    = "#c4622d"

return {
  normal = {
    a = { fg = bg_solid, bg = blue,   gui = "bold" },
    b = { fg = fg,       bg = bg3 },
    c = { fg = fg_muted, bg = bg },
  },
  insert = {
    a = { fg = bg_solid, bg = green,  gui = "bold" },
    b = { fg = fg,       bg = bg3 },
    c = { fg = fg_muted, bg = bg },
  },
  visual = {
    a = { fg = bg_solid, bg = peach,  gui = "bold" },
    b = { fg = fg,       bg = bg3 },
    c = { fg = fg_muted, bg = bg },
  },
  replace = {
    a = { fg = bg_solid, bg = red,    gui = "bold" },
    b = { fg = fg,       bg = bg3 },
    c = { fg = fg_muted, bg = bg },
  },
  command = {
    a = { fg = bg_solid, bg = orange, gui = "bold" },
    b = { fg = fg,       bg = bg3 },
    c = { fg = fg_muted, bg = bg },
  },
  inactive = {
    a = { fg = fg_muted, bg = bg2 },
    b = { fg = fg_muted, bg = bg2 },
    c = { fg = fg_muted, bg = bg },
  },
}
