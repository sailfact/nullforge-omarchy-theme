-- nullforge.lua
-- A deep navy / warm terracotta Neovim colorscheme
-- Place at: ~/.config/nvim/colors/nullforge.lua

vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end

vim.g.colors_name = "nullforge"
vim.o.background = "dark"

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ─── Palette ────────────────────────────────────────────────────────────────
local c = {
  -- Base
  bg              = "NONE",           -- transparent
  bg_solid        = "#0a1420",        -- true bg (used for floats, popups)
  bg1             = "#111e2e",        -- slightly lifted surface
  bg2             = "#1a2d40",        -- panels, sidebars
  bg3             = "#243344",        -- statusline, tabline

  fg              = "#f2ece6",        -- foreground / color7
  fg_dim          = "#dce6f0",        -- dim text / color6/14
  fg_muted        = "#7a9bb8",        -- comments, hints / color4/12

  -- Accent colours
  red             = "#d97264",        -- errors, deletes / color1/9
  orange          = "#c4622d",        -- cursor, warnings / color3, cursor
  peach           = "#e8a882",        -- numbers, parameters / color11
  green           = "#8fb27e",        -- strings, adds / color2
  green_bright    = "#a4c294",        -- success, brighter strings / color10
  blue            = "#7a9bb8",        -- functions, info / color4
  blue_light      = "#dce6f0",        -- types / color6
  cream           = "#f7e8df",        -- special, bright purple / color13

  -- Selection / UI
  selection_bg    = "#3d5a75",        -- visual selection bg / color8
  selection_fg    = "#f2ece6",        -- visual selection fg

  -- Delimiters / punctuation
  punct           = "#5a7a96",        -- slightly dimmer blue

  -- Git
  git_add         = "#8fb27e",
  git_change      = "#7a9bb8",
  git_delete      = "#d97264",

  -- Diagnostics
  diag_error      = "#d97264",
  diag_warn       = "#c4622d",
  diag_info       = "#7a9bb8",
  diag_hint       = "#8fb27e",
}

-- ─── Editor Core ────────────────────────────────────────────────────────────
hl("Normal",          { fg = c.fg,        bg = c.bg })
hl("NormalNC",        { fg = c.fg_dim,    bg = c.bg })
hl("NormalFloat",     { fg = c.fg,        bg = c.bg_solid })
hl("FloatBorder",     { fg = c.selection_bg, bg = c.bg_solid })
hl("FloatTitle",      { fg = c.peach,     bg = c.bg_solid, bold = true })

hl("ColorColumn",     { bg = c.bg1 })
hl("Conceal",         { fg = c.fg_muted })
hl("CursorColumn",    { bg = c.bg1 })
hl("CursorLine",      { bg = c.bg1 })
hl("CursorLineFold",  { bg = c.bg1 })
hl("CursorLineNr",    { fg = c.peach,     bold = true })
hl("CursorLineSign",  { bg = c.bg1 })

hl("Directory",       { fg = c.blue })
hl("EndOfBuffer",     { fg = c.bg2 })
hl("ErrorMsg",        { fg = c.red,       bold = true })
hl("FoldColumn",      { fg = c.fg_muted,  bg = c.bg })
hl("Folded",          { fg = c.fg_muted,  bg = c.bg2 })

hl("IncSearch",       { fg = c.bg_solid,  bg = c.orange,    bold = true })
hl("Search",          { fg = c.bg_solid,  bg = c.blue })
hl("Substitute",      { fg = c.bg_solid,  bg = c.peach })
hl("CurSearch",       { link = "IncSearch" })

hl("LineNr",          { fg = c.punct })
hl("LineNrAbove",     { fg = c.punct })
hl("LineNrBelow",     { fg = c.punct })

hl("MatchParen",      { fg = c.cream,     bold = true,      underline = true })
hl("ModeMsg",         { fg = c.green,     bold = true })
hl("MoreMsg",         { fg = c.green })
hl("MsgArea",         { fg = c.fg })
hl("MsgSeparator",    { fg = c.punct })
hl("NonText",         { fg = c.bg3 })

hl("Pmenu",           { fg = c.fg,        bg = c.bg1 })
hl("PmenuSel",        { fg = c.fg,        bg = c.selection_bg, bold = true })
hl("PmenuSbar",       { bg = c.bg2 })
hl("PmenuThumb",      { bg = c.selection_bg })
hl("PmenuKind",       { fg = c.blue,      bg = c.bg1 })
hl("PmenuKindSel",    { fg = c.blue,      bg = c.selection_bg })
hl("PmenuExtra",      { fg = c.fg_muted,  bg = c.bg1 })
hl("PmenuExtraSel",   { fg = c.fg_muted,  bg = c.selection_bg })

hl("Question",        { fg = c.blue })
hl("QuickFixLine",    { bg = c.bg2 })

hl("SignColumn",      { fg = c.fg_muted,  bg = c.bg })
hl("SpecialKey",      { fg = c.punct })
hl("SpellBad",        { sp = c.red,       undercurl = true })
hl("SpellCap",        { sp = c.blue,      undercurl = true })
hl("SpellLocal",      { sp = c.peach,     undercurl = true })
hl("SpellRare",       { sp = c.cream,     undercurl = true })

hl("StatusLine",      { fg = c.fg,        bg = c.bg3 })
hl("StatusLineNC",    { fg = c.fg_muted,  bg = c.bg2 })
hl("TabLine",         { fg = c.fg_muted,  bg = c.bg2 })
hl("TabLineFill",     { bg = c.bg2 })
hl("TabLineSel",      { fg = c.fg,        bg = c.bg3,       bold = true })

hl("Title",           { fg = c.peach,     bold = true })
hl("VertSplit",       { fg = c.bg3 })
hl("WinSeparator",    { fg = c.bg3 })

hl("Visual",          { fg = c.selection_fg, bg = c.selection_bg })
hl("VisualNOS",       { link = "Visual" })
hl("WarningMsg",      { fg = c.orange })
hl("Whitespace",      { fg = c.bg3 })
hl("WildMenu",        { fg = c.fg,        bg = c.selection_bg })
hl("WinBar",          { fg = c.fg_dim,    bg = c.bg })
hl("WinBarNC",        { fg = c.fg_muted,  bg = c.bg })

-- ─── Syntax (Classic Vim Groups) ────────────────────────────────────────────
hl("Comment",         { fg = c.fg_muted,  italic = true })

hl("Constant",        { fg = c.peach })
hl("String",          { fg = c.green })
hl("Character",       { fg = c.green_bright })
hl("Number",          { fg = c.peach })
hl("Boolean",         { fg = c.orange })
hl("Float",           { fg = c.peach })

hl("Identifier",      { fg = c.fg })
hl("Function",        { fg = c.blue })

hl("Statement",       { fg = c.cream })
hl("Conditional",     { fg = c.cream })
hl("Repeat",          { fg = c.cream })
hl("Label",           { fg = c.cream })
hl("Operator",        { fg = c.blue_light })
hl("Keyword",         { fg = c.cream,     italic = true })
hl("Exception",       { fg = c.red })

hl("PreProc",         { fg = c.peach })
hl("Include",         { fg = c.peach })
hl("Define",          { fg = c.orange })
hl("Macro",           { fg = c.orange })
hl("PreCondit",       { fg = c.peach })

hl("Type",            { fg = c.blue_light })
hl("StorageClass",    { fg = c.blue_light })
hl("Structure",       { fg = c.blue_light })
hl("Typedef",         { fg = c.blue_light })

hl("Special",         { fg = c.cream })
hl("SpecialChar",     { fg = c.green_bright })
hl("Tag",             { fg = c.blue })
hl("Delimiter",       { fg = c.punct })
hl("SpecialComment",  { fg = c.fg_muted,  italic = true })
hl("Debug",           { fg = c.red })

hl("Underlined",      { underline = true })
hl("Ignore",          { fg = c.bg3 })
hl("Error",           { fg = c.red,       bold = true })
hl("Todo",            { fg = c.bg_solid,  bg = c.orange,    bold = true })

-- ─── Treesitter ─────────────────────────────────────────────────────────────
hl("@variable",               { fg = c.fg })
hl("@variable.builtin",       { fg = c.peach,      italic = true })
hl("@variable.parameter",     { fg = c.fg_dim })
hl("@variable.member",        { fg = c.blue_light })

hl("@constant",               { fg = c.peach })
hl("@constant.builtin",       { fg = c.orange })
hl("@constant.macro",         { fg = c.orange })

hl("@string",                 { fg = c.green })
hl("@string.escape",          { fg = c.green_bright })
hl("@string.special",         { fg = c.green_bright })
hl("@string.regexp",          { fg = c.green_bright })

hl("@character",              { fg = c.green_bright })
hl("@number",                 { fg = c.peach })
hl("@number.float",           { fg = c.peach })
hl("@boolean",                { fg = c.orange })

hl("@function",               { fg = c.blue })
hl("@function.builtin",       { fg = c.blue,       italic = true })
hl("@function.call",          { fg = c.blue })
hl("@function.macro",         { fg = c.orange })
hl("@function.method",        { fg = c.blue })
hl("@function.method.call",   { fg = c.blue })

hl("@constructor",            { fg = c.blue_light })

hl("@keyword",                { fg = c.cream,      italic = true })
hl("@keyword.import",         { fg = c.peach })
hl("@keyword.function",       { fg = c.cream,      italic = true })
hl("@keyword.operator",       { fg = c.blue_light })
hl("@keyword.return",         { fg = c.cream,      italic = true })
hl("@keyword.conditional",    { fg = c.cream })
hl("@keyword.repeat",         { fg = c.cream })
hl("@keyword.exception",      { fg = c.red })
hl("@keyword.modifier",       { fg = c.cream })

hl("@operator",               { fg = c.blue_light })
hl("@punctuation.bracket",    { fg = c.punct })
hl("@punctuation.delimiter",  { fg = c.punct })
hl("@punctuation.special",    { fg = c.peach })

hl("@type",                   { fg = c.blue_light })
hl("@type.builtin",           { fg = c.blue_light,  italic = true })
hl("@type.definition",        { fg = c.blue_light })

hl("@attribute",              { fg = c.peach })
hl("@property",               { fg = c.fg_dim })
hl("@namespace",              { fg = c.fg_dim })
hl("@module",                 { fg = c.fg_dim })

hl("@comment",                { fg = c.fg_muted,   italic = true })
hl("@comment.todo",           { fg = c.bg_solid,   bg = c.orange,  bold = true })
hl("@comment.note",           { fg = c.bg_solid,   bg = c.blue,    bold = true })
hl("@comment.warning",        { fg = c.bg_solid,   bg = c.orange,  bold = true })
hl("@comment.error",          { fg = c.bg_solid,   bg = c.red,     bold = true })

-- Markup (markdown etc.)
hl("@markup.heading",         { fg = c.peach,      bold = true })
hl("@markup.heading.1",       { fg = c.peach,      bold = true })
hl("@markup.heading.2",       { fg = c.blue_light, bold = true })
hl("@markup.heading.3",       { fg = c.blue,       bold = true })
hl("@markup.italic",          { italic = true })
hl("@markup.bold",            { bold = true })
hl("@markup.strikethrough",   { strikethrough = true })
hl("@markup.underline",       { underline = true })
hl("@markup.link",            { fg = c.blue,       underline = true })
hl("@markup.link.url",        { fg = c.green,      underline = true })
hl("@markup.raw",             { fg = c.green })
hl("@markup.list",            { fg = c.peach })
hl("@markup.list.checked",    { fg = c.green })
hl("@markup.list.unchecked",  { fg = c.fg_muted })

hl("@tag",                    { fg = c.blue })
hl("@tag.attribute",          { fg = c.peach })
hl("@tag.delimiter",          { fg = c.punct })

-- ─── LSP ────────────────────────────────────────────────────────────────────
hl("LspReferenceText",        { bg = c.selection_bg })
hl("LspReferenceRead",        { bg = c.selection_bg })
hl("LspReferenceWrite",       { bg = c.selection_bg, underline = true })
hl("LspSignatureActiveParameter", { fg = c.peach,    bold = true })
hl("LspInlayHint",            { fg = c.fg_muted,   bg = c.bg1,    italic = true })
hl("LspCodeLens",             { fg = c.fg_muted,   italic = true })

-- LSP semantic tokens
hl("@lsp.type.class",         { link = "@type" })
hl("@lsp.type.decorator",     { link = "@attribute" })
hl("@lsp.type.enum",          { link = "@type" })
hl("@lsp.type.enumMember",    { link = "@constant" })
hl("@lsp.type.function",      { link = "@function" })
hl("@lsp.type.interface",     { link = "@type" })
hl("@lsp.type.macro",         { link = "@function.macro" })
hl("@lsp.type.method",        { link = "@function.method" })
hl("@lsp.type.namespace",     { link = "@module" })
hl("@lsp.type.parameter",     { link = "@variable.parameter" })
hl("@lsp.type.property",      { link = "@property" })
hl("@lsp.type.struct",        { link = "@type" })
hl("@lsp.type.type",          { link = "@type" })
hl("@lsp.type.variable",      { link = "@variable" })
hl("@lsp.type.keyword",       { link = "@keyword" })
hl("@lsp.type.comment",       { link = "@comment" })
hl("@lsp.type.string",        { link = "@string" })
hl("@lsp.type.number",        { link = "@number" })
hl("@lsp.mod.readonly",       { italic = true })
hl("@lsp.mod.deprecated",     { fg = c.fg_muted,   strikethrough = true })

-- Diagnostics
hl("DiagnosticError",         { fg = c.diag_error })
hl("DiagnosticWarn",          { fg = c.diag_warn })
hl("DiagnosticInfo",          { fg = c.diag_info })
hl("DiagnosticHint",          { fg = c.diag_hint })
hl("DiagnosticOk",            { fg = c.green_bright })

hl("DiagnosticUnderlineError",{ sp = c.diag_error,  undercurl = true })
hl("DiagnosticUnderlineWarn", { sp = c.diag_warn,   undercurl = true })
hl("DiagnosticUnderlineInfo", { sp = c.diag_info,   undercurl = true })
hl("DiagnosticUnderlineHint", { sp = c.diag_hint,   undercurl = true })

hl("DiagnosticVirtualTextError", { fg = c.diag_error, bg = c.bg1, italic = true })
hl("DiagnosticVirtualTextWarn",  { fg = c.diag_warn,  bg = c.bg1, italic = true })
hl("DiagnosticVirtualTextInfo",  { fg = c.diag_info,  bg = c.bg1, italic = true })
hl("DiagnosticVirtualTextHint",  { fg = c.diag_hint,  bg = c.bg1, italic = true })

hl("DiagnosticSignError",     { fg = c.diag_error })
hl("DiagnosticSignWarn",      { fg = c.diag_warn })
hl("DiagnosticSignInfo",      { fg = c.diag_info })
hl("DiagnosticSignHint",      { fg = c.diag_hint })

hl("DiagnosticFloatingError", { fg = c.diag_error })
hl("DiagnosticFloatingWarn",  { fg = c.diag_warn })
hl("DiagnosticFloatingInfo",  { fg = c.diag_info })
hl("DiagnosticFloatingHint",  { fg = c.diag_hint })

-- ─── Telescope ──────────────────────────────────────────────────────────────
hl("TelescopeNormal",         { fg = c.fg,         bg = c.bg_solid })
hl("TelescopeBorder",         { fg = c.selection_bg, bg = c.bg_solid })
hl("TelescopeTitle",          { fg = c.peach,      bg = c.bg_solid, bold = true })
hl("TelescopePromptNormal",   { fg = c.fg,         bg = c.bg1 })
hl("TelescopePromptBorder",   { fg = c.blue,       bg = c.bg1 })
hl("TelescopePromptTitle",    { fg = c.bg_solid,   bg = c.blue,     bold = true })
hl("TelescopePromptPrefix",   { fg = c.blue,       bg = c.bg1 })
hl("TelescopePromptCounter",  { fg = c.fg_muted,   bg = c.bg1 })
hl("TelescopeResultsNormal",  { fg = c.fg,         bg = c.bg_solid })
hl("TelescopeResultsBorder",  { fg = c.selection_bg, bg = c.bg_solid })
hl("TelescopeResultsTitle",   { fg = c.fg_muted,   bg = c.bg_solid })
hl("TelescopePreviewNormal",  { fg = c.fg,         bg = c.bg_solid })
hl("TelescopePreviewBorder",  { fg = c.selection_bg, bg = c.bg_solid })
hl("TelescopePreviewTitle",   { fg = c.bg_solid,   bg = c.selection_bg, bold = true })
hl("TelescopeSelection",      { fg = c.fg,         bg = c.selection_bg })
hl("TelescopeSelectionCaret", { fg = c.orange,     bg = c.selection_bg })
hl("TelescopeMultiSelection", { fg = c.peach,      bg = c.bg2 })
hl("TelescopeMatching",       { fg = c.orange,     bold = true })

-- ─── GitSigns ───────────────────────────────────────────────────────────────
hl("GitSignsAdd",             { fg = c.git_add })
hl("GitSignsChange",          { fg = c.git_change })
hl("GitSignsDelete",          { fg = c.git_delete })
hl("GitSignsAddNr",           { fg = c.git_add })
hl("GitSignsChangeNr",        { fg = c.git_change })
hl("GitSignsDeleteNr",        { fg = c.git_delete })
hl("GitSignsAddLn",           { bg = c.bg1 })
hl("GitSignsChangeLn",        { bg = c.bg1 })
hl("GitSignsDeleteLn",        { bg = c.bg1 })
hl("GitSignsAddPreview",      { fg = c.git_add,    bg = c.bg1 })
hl("GitSignsDeletePreview",   { fg = c.git_delete, bg = c.bg1 })
hl("GitSignsCurrentLineBlame",{ fg = c.fg_muted,   italic = true })

-- ─── Lualine (component colours you can reference in your lualine config) ───
-- Lualine uses its own theming system. Define a theme table below so you can
-- plug it straight into lualine's `options.theme` field.

-- NOTE: this block doesn't set highlight groups directly — it's used by
-- the companion lualine theme at the bottom of this file.

-- ─── Diff ───────────────────────────────────────────────────────────────────
hl("DiffAdd",                 { fg = c.git_add,    bg = c.bg1 })
hl("DiffChange",              { fg = c.git_change, bg = c.bg1 })
hl("DiffDelete",              { fg = c.git_delete, bg = c.bg1 })
hl("DiffText",                { fg = c.fg,         bg = c.selection_bg, bold = true })
hl("diffAdded",               { link = "DiffAdd" })
hl("diffRemoved",             { link = "DiffDelete" })
hl("diffChanged",             { link = "DiffChange" })
hl("diffFile",                { fg = c.peach })
hl("diffOldFile",             { fg = c.red })
hl("diffNewFile",             { fg = c.green })

-- ─── Misc plugins (common) ──────────────────────────────────────────────────
-- indent-blankline
hl("IblIndent",               { fg = c.bg3 })
hl("IblScope",                { fg = c.selection_bg })

-- nvim-tree
hl("NvimTreeNormal",          { fg = c.fg,         bg = c.bg_solid })
hl("NvimTreeRootFolder",      { fg = c.orange,     bold = true })
hl("NvimTreeFolderIcon",      { fg = c.blue })
hl("NvimTreeFileIcon",        { fg = c.fg_dim })
hl("NvimTreeGitDirty",        { fg = c.git_change })
hl("NvimTreeGitNew",          { fg = c.git_add })
hl("NvimTreeGitDeleted",      { fg = c.git_delete })

-- which-key
hl("WhichKey",                { fg = c.blue })
hl("WhichKeyGroup",           { fg = c.peach })
hl("WhichKeyDesc",            { fg = c.fg_dim })
hl("WhichKeySeparator",       { fg = c.punct })
hl("WhichKeyValue",           { fg = c.fg_muted })

-- nvim-cmp
hl("CmpItemAbbrMatch",        { fg = c.orange,     bold = true })
hl("CmpItemAbbrMatchFuzzy",   { fg = c.orange })
hl("CmpItemKindText",         { fg = c.fg_dim })
hl("CmpItemKindMethod",       { fg = c.blue })
hl("CmpItemKindFunction",     { fg = c.blue })
hl("CmpItemKindConstructor",  { fg = c.blue_light })
hl("CmpItemKindField",        { fg = c.fg_dim })
hl("CmpItemKindVariable",     { fg = c.fg })
hl("CmpItemKindClass",        { fg = c.blue_light })
hl("CmpItemKindInterface",    { fg = c.blue_light })
hl("CmpItemKindModule",       { fg = c.fg_dim })
hl("CmpItemKindProperty",     { fg = c.fg_dim })
hl("CmpItemKindKeyword",      { fg = c.cream })
hl("CmpItemKindSnippet",      { fg = c.peach })
hl("CmpItemKindValue",        { fg = c.peach })
hl("CmpItemKindEnum",         { fg = c.blue_light })
hl("CmpItemKindColor",        { fg = c.peach })
hl("CmpItemKindFile",         { fg = c.green })
hl("CmpItemKindFolder",       { fg = c.blue })
hl("CmpItemKindEvent",        { fg = c.cream })
hl("CmpItemKindOperator",     { fg = c.blue_light })
hl("CmpItemKindTypeParameter",{ fg = c.blue_light })

-- ─── Lualine ────────────────────────────────────────────────────────────────
-- Lualine themes live in their own file, not here.
-- Place the companion file at:
--   ~/.config/nvim/lua/lualine/themes/nullforge.lua
-- Then in your lualine setup:
--   require("lualine").setup({ options = { theme = "nullforge" } })

-- ─── Done ───────────────────────────────────────────────────────────────────
