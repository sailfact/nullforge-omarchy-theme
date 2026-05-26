-- ============================================================
--  neovim.lua — Nullforge
--  drop into ~/.config/omarchy/themes/nullforge/neovim.lua
--  Loaded by omarchy via :luafile.
-- ============================================================

-- Lazy stub that loads `nullforge` colorscheme if installed,
-- otherwise applies the core highlights inline so the brand is
-- coherent even on a fresh box.

local ok = pcall(vim.cmd, "colorscheme nullforge")
if ok then return end

vim.o.background     = "dark"
vim.o.termguicolors  = true

local hl = function(g, opts) vim.api.nvim_set_hl(0, g, opts) end

-- palette
local P = {
  void      = "#0a1420",
  null      = "#1a2a3a",
  depth     = "#3d5a75",
  slate     = "#7a9bb8",
  mist      = "#dce6f0",
  parchment = "#f2ece6",
  sand      = "#c8bfb5",
  stone     = "#6b6058",
  pitch     = "#110e0b",
  ash       = "#f7e8df",
  ember     = "#e8a882",
  forge     = "#c4622d",
  iron      = "#8f4420",
  coal      = "#5a2912",
  ok        = "#8fb27e",
  danger    = "#d97264",
}

-- surfaces
hl("Normal",        { fg = P.parchment, bg = P.void })
hl("NormalNC",      { fg = P.parchment, bg = P.void })
hl("NormalFloat",   { fg = P.parchment, bg = P.null })
hl("FloatBorder",   { fg = P.forge,     bg = P.null })
hl("StatusLine",    { fg = P.parchment, bg = P.forge })
hl("StatusLineNC",  { fg = P.slate,     bg = P.null })
hl("LineNr",        { fg = P.depth })
hl("CursorLineNr",  { fg = P.forge,     bold = true })
hl("CursorLine",    { bg = "#1a2a3a66" })
hl("CursorColumn",  { bg = "#1a2a3a66" })
hl("ColorColumn",   { bg = P.null })
hl("VertSplit",     { fg = P.null })
hl("WinSeparator",  { fg = P.null })
hl("SignColumn",    { bg = P.void })
hl("Visual",        { bg = "#c4622d40" })
hl("Search",        { fg = P.void, bg = P.forge, bold = true })
hl("IncSearch",     { fg = P.parchment, bg = P.iron })
hl("MatchParen",    { fg = P.forge, bold = true, underline = true })
hl("Cursor",        { fg = P.void, bg = P.forge })
hl("Pmenu",         { fg = P.parchment, bg = P.null })
hl("PmenuSel",      { fg = P.parchment, bg = P.forge, bold = true })
hl("PmenuSbar",     { bg = P.null })
hl("PmenuThumb",    { bg = P.depth })
hl("Directory",     { fg = P.forge })
hl("Title",         { fg = P.forge, bold = true })
hl("EndOfBuffer",   { fg = P.null })
hl("WinBar",        { fg = P.parchment, bg = P.null, bold = true })
hl("WinBarNC",      { fg = P.slate,     bg = P.null })

-- syntax (legacy + treesitter parents)
hl("Comment",       { fg = P.slate,  italic = true })
hl("String",        { fg = P.ember })
hl("Character",     { fg = P.ember })
hl("Number",        { fg = P.ember })
hl("Boolean",       { fg = P.forge })
hl("Float",         { fg = P.ember })
hl("Constant",      { fg = P.ember })
hl("Identifier",    { fg = P.parchment })
hl("Function",      { fg = P.ash })
hl("Statement",     { fg = P.forge })
hl("Keyword",       { fg = P.forge })
hl("Conditional",   { fg = P.forge })
hl("Repeat",        { fg = P.forge })
hl("Label",         { fg = P.forge })
hl("Operator",      { fg = P.mist })
hl("Exception",     { fg = P.danger })
hl("PreProc",       { fg = P.ember, italic = true })
hl("Include",       { fg = P.forge })
hl("Define",        { fg = P.forge })
hl("Macro",         { fg = P.ember })
hl("Type",          { fg = P.ember })
hl("StorageClass",  { fg = P.forge })
hl("Structure",     { fg = P.forge })
hl("Typedef",       { fg = P.ember })
hl("Special",       { fg = P.forge })
hl("Delimiter",     { fg = P.slate })
hl("Tag",           { fg = P.forge })
hl("Underlined",    { fg = P.forge, underline = true })
hl("Todo",          { fg = P.void,  bg = P.forge, bold = true })
hl("Error",         { fg = P.danger, bold = true })

-- diagnostics
hl("DiagnosticError",     { fg = P.danger })
hl("DiagnosticWarn",      { fg = P.forge })
hl("DiagnosticInfo",      { fg = P.slate })
hl("DiagnosticHint",      { fg = P.depth })
hl("DiagnosticUnderlineError", { undercurl = true, sp = P.danger })
hl("DiagnosticUnderlineWarn",  { undercurl = true, sp = P.forge })

-- diff
hl("DiffAdd",     { bg = "#8fb27e22" })
hl("DiffChange",  { bg = "#c4622d22" })
hl("DiffDelete",  { bg = "#d9726422" })
hl("DiffText",    { bg = "#c4622d44", bold = true })

-- treesitter overrides
hl("@variable",          { fg = P.parchment })
hl("@variable.parameter",{ fg = P.mist, italic = true })
hl("@property",          { fg = P.slate })
hl("@field",             { fg = P.slate })
hl("@function",          { fg = P.ash })
hl("@function.builtin",  { fg = P.ash })
hl("@function.method",   { fg = P.ash })
hl("@keyword",           { fg = P.forge })
hl("@keyword.import",    { fg = P.forge })
hl("@type",              { fg = P.ember })
hl("@type.builtin",      { fg = P.ember })
hl("@string",            { fg = P.ember })
hl("@constant",          { fg = P.ember })
hl("@number",            { fg = P.ember })
hl("@punctuation.bracket",{ fg = P.slate })
hl("@punctuation.delimiter", { fg = P.slate })
hl("@tag",               { fg = P.forge })
hl("@tag.attribute",     { fg = P.ember, italic = true })

-- git signs
hl("GitSignsAdd",    { fg = P.ok })
hl("GitSignsChange", { fg = P.forge })
hl("GitSignsDelete", { fg = P.danger })

-- telescope
hl("TelescopeBorder",         { fg = P.forge, bg = P.null })
hl("TelescopePromptBorder",   { fg = P.forge, bg = P.null })
hl("TelescopePromptPrefix",   { fg = P.forge })
hl("TelescopeMatching",       { fg = P.forge, bold = true })
hl("TelescopeSelection",      { fg = P.parchment, bg = P.forge, bold = true })

-- which-key / lazy / mini
hl("WhichKey",          { fg = P.forge })
hl("WhichKeyDesc",      { fg = P.parchment })
hl("WhichKeyGroup",     { fg = P.ember })

return P
