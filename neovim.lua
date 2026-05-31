-- ============================================================
--  nullforge.lua — Neovim colorscheme
--  Tuned to the Nullforge terminal palette (Alacritty / kitty)
--
--  Drop into one of:
--    ~/.config/nvim/colors/nullforge.lua          (standalone)
--    ~/.config/omarchy/themes/nullforge/neovim.lua (omarchy)
--
--  Then:  :colorscheme nullforge
-- ============================================================

vim.o.background    = "dark"
vim.o.termguicolors = true
vim.g.colors_name   = "nullforge"

local hl = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

-- ── Palette ───────────────────────────────────────────────────────────────
-- Matched 1-to-1 with your terminal color slots so ANSI colours in
-- embedded terminals / :terminal render consistently with the editor.
--
--   color0  / black          → void      (terminal bg / true black)
--   color1  / red            → danger
--   color2  / green          → ok
--   color3  / yellow         → forge     (cursor / accent)
--   color4  / blue           → slate     (accent blue)
--   color5  / magenta        → ember
--   color6  / cyan           → mist
--   color7  / white          → parchment (fg)
--   color8  / bright black   → depth     (selection bg / dim)
--   color9  / bright red     → danger    (same hue, stays vivid)
--   color10 / bright green   → ok-bright
--   color11 / bright yellow  → ember     (maps to terminal bright yellow)
--   color12 / bright blue    → slate     (same hue)
--   color13 / bright magenta → ash       (lightest warm tone)
--   color14 / bright cyan    → mist      (same hue)
--   color15 / bright white   → parchment (same hue)

local P = {
  -- Surfaces  (Null ramp — cold blue-blacks)
  void      = "#0a1420",   -- color0  — deepest background
  null      = "#1a2a3a",   -- panel / float background
  depth     = "#3d5a75",   -- color8  — selection bg, dim text
  slate     = "#7a9bb8",   -- color4/12 — accent blue, comments
  mist      = "#dce6f0",   -- color6/14 — cyan/operators

  -- Warm neutrals (Parchment ramp)
  parchment = "#f2ece6",   -- color7/15 — primary foreground
  ash       = "#f7e8df",   -- color13 — function names, bright magenta
  sand      = "#c8bfb5",   -- dim foreground
  stone     = "#6b6058",   -- tertiary / inactive text
  pitch     = "#110e0b",   -- darkest dark (cursor text on light surface)

  -- Forge ramp (orange-rust primary accent)
  ember     = "#e8a882",   -- color5/11 — strings, types, magenta
  forge     = "#c4622d",   -- color3  — keywords, cursor, primary accent
  iron      = "#8f4420",   -- mid accent (IncSearch, dim)
  coal      = "#5a2912",   -- deep accent

  -- Status
  ok        = "#8fb27e",   -- color2  — git add / success
  ok_bright = "#a4c294",   -- color10 — bright green variant
  danger    = "#d97264",   -- color1/9 — errors / danger
}

-- ── UI Chrome ─────────────────────────────────────────────────────────────

hl("Normal",       { fg = P.parchment, bg = P.void })
hl("NormalNC",     { fg = P.parchment, bg = P.void })
hl("NormalFloat",  { fg = P.parchment, bg = P.null })
hl("FloatBorder",  { fg = P.forge,     bg = P.null })
hl("FloatTitle",   { fg = P.forge,     bg = P.null, bold = true })

hl("StatusLine",   { fg = P.parchment, bg = P.forge })
hl("StatusLineNC", { fg = P.slate,     bg = P.null })
hl("TabLine",      { fg = P.slate,     bg = P.null })
hl("TabLineSel",   { fg = P.parchment, bg = P.forge, bold = true })
hl("TabLineFill",  { bg = P.null })

hl("WinBar",       { fg = P.parchment, bg = P.null, bold = true })
hl("WinBarNC",     { fg = P.slate,     bg = P.null })
hl("WinSeparator", { fg = P.null })
hl("VertSplit",    { fg = P.null })

hl("LineNr",       { fg = P.depth })
hl("CursorLineNr", { fg = P.forge,     bold = true })
hl("CursorLine",   { bg = "#1a2a3a55" })
hl("CursorColumn", { bg = "#1a2a3a55" })
hl("ColorColumn",  { bg = P.null })
hl("SignColumn",   { bg = P.void })
hl("FoldColumn",   { fg = P.depth, bg = P.void })
hl("Folded",       { fg = P.slate, bg = P.null, italic = true })

hl("EndOfBuffer",  { fg = P.null })
hl("NonText",      { fg = P.depth })
hl("Whitespace",   { fg = P.null })
hl("SpecialKey",   { fg = P.depth })
hl("Conceal",      { fg = P.depth })

-- ── Selection / Search ────────────────────────────────────────────────────

hl("Visual",       { bg = "#c4622d40" })
hl("VisualNOS",    { bg = "#c4622d28" })
hl("Search",       { fg = P.void,      bg = P.forge, bold = true })
hl("IncSearch",    { fg = P.parchment, bg = P.iron })
hl("CurSearch",    { fg = P.void,      bg = P.ember, bold = true })
hl("Substitute",   { fg = P.void,      bg = P.forge, bold = true })
hl("MatchParen",   { fg = P.forge,     bold = true, underline = true })

-- ── Cursor / Popup ────────────────────────────────────────────────────────

hl("Cursor",       { fg = P.void, bg = P.forge })
hl("lCursor",      { fg = P.void, bg = P.slate })
hl("CursorIM",     { fg = P.void, bg = P.ember })
hl("TermCursor",   { fg = P.void, bg = P.forge })

hl("Pmenu",        { fg = P.parchment, bg = P.null })
hl("PmenuSel",     { fg = P.parchment, bg = P.forge, bold = true })
hl("PmenuSbar",    { bg = P.null })
hl("PmenuThumb",   { bg = P.depth })
hl("PmenuKind",    { fg = P.ember,     bg = P.null })
hl("PmenuKindSel", { fg = P.void,      bg = P.forge })
hl("PmenuExtra",   { fg = P.slate,     bg = P.null })

hl("Directory",    { fg = P.forge })
hl("Title",        { fg = P.forge,     bold = true })
hl("Question",     { fg = P.ok })
hl("MoreMsg",      { fg = P.ok })
hl("ModeMsg",      { fg = P.parchment, bold = true })
hl("MsgSeparator", { fg = P.depth,     bg = P.null })
hl("WarningMsg",   { fg = P.ember,     bold = true })
hl("ErrorMsg",     { fg = P.danger,    bold = true })

hl("Winsbar",      { fg = P.slate })
hl("QuickFixLine", { bg = "#c4622d22" })
hl("SpellBad",     { undercurl = true, sp = P.danger })
hl("SpellCap",     { undercurl = true, sp = P.ember })
hl("SpellLocal",   { undercurl = true, sp = P.slate })
hl("SpellRare",    { undercurl = true, sp = P.mist })

-- ── Syntax — legacy groups (base colours for non-TS parsers) ─────────────

hl("Comment",      { fg = P.slate,     italic = true })
hl("String",       { fg = P.ember })
hl("Character",    { fg = P.ember })
hl("Number",       { fg = P.ember })
hl("Float",        { fg = P.ember })
hl("Boolean",      { fg = P.forge })
hl("Constant",     { fg = P.ember })
hl("Identifier",   { fg = P.parchment })
hl("Function",     { fg = P.ash })
hl("Statement",    { fg = P.forge })
hl("Keyword",      { fg = P.forge })
hl("Conditional",  { fg = P.forge })
hl("Repeat",       { fg = P.forge })
hl("Label",        { fg = P.forge })
hl("Operator",     { fg = P.mist })
hl("Exception",    { fg = P.danger })
hl("PreProc",      { fg = P.ember,     italic = true })
hl("Include",      { fg = P.forge })
hl("Define",       { fg = P.forge })
hl("Macro",        { fg = P.ember })
hl("PreCondit",    { fg = P.forge })
hl("Type",         { fg = P.ember })
hl("StorageClass", { fg = P.forge })
hl("Structure",    { fg = P.forge })
hl("Typedef",      { fg = P.ember })
hl("Special",      { fg = P.forge })
hl("SpecialChar",  { fg = P.ember })
hl("Delimiter",    { fg = P.slate })
hl("Tag",          { fg = P.forge })
hl("Underlined",   { fg = P.forge,     underline = true })
hl("Ignore",       { fg = P.depth })
hl("Todo",         { fg = P.void,      bg = P.forge, bold = true })
hl("Error",        { fg = P.danger,    bold = true })

-- ── Treesitter ────────────────────────────────────────────────────────────

hl("@variable",                { fg = P.parchment })
hl("@variable.builtin",        { fg = P.ember, italic = true })
hl("@variable.parameter",      { fg = P.mist,  italic = true })
hl("@variable.member",         { fg = P.slate })

hl("@constant",                { fg = P.ember })
hl("@constant.builtin",        { fg = P.ember, bold = true })
hl("@constant.macro",          { fg = P.ember })

hl("@string",                  { fg = P.ember })
hl("@string.escape",           { fg = P.forge })
hl("@string.special",          { fg = P.forge })
hl("@string.regexp",           { fg = P.ember, italic = true })

hl("@number",                  { fg = P.ember })
hl("@number.float",            { fg = P.ember })
hl("@boolean",                 { fg = P.forge })

hl("@type",                    { fg = P.ember })
hl("@type.builtin",            { fg = P.ember })
hl("@type.definition",         { fg = P.ember, bold = true })
hl("@type.qualifier",          { fg = P.forge })

hl("@keyword",                 { fg = P.forge })
hl("@keyword.coroutine",       { fg = P.forge, italic = true })
hl("@keyword.function",        { fg = P.forge })
hl("@keyword.operator",        { fg = P.mist })
hl("@keyword.import",          { fg = P.forge })
hl("@keyword.return",          { fg = P.forge, italic = true })
hl("@keyword.exception",       { fg = P.danger })
hl("@keyword.conditional",     { fg = P.forge })
hl("@keyword.repeat",          { fg = P.forge })

hl("@function",                { fg = P.ash })
hl("@function.builtin",        { fg = P.ash })
hl("@function.call",           { fg = P.ash })
hl("@function.method",         { fg = P.ash })
hl("@function.method.call",    { fg = P.ash })
hl("@function.macro",          { fg = P.ember, italic = true })

hl("@constructor",             { fg = P.ember, bold = true })

hl("@property",                { fg = P.slate })
hl("@field",                   { fg = P.slate })
hl("@attribute",               { fg = P.ember, italic = true })
hl("@namespace",               { fg = P.mist })
hl("@module",                  { fg = P.mist })

hl("@operator",                { fg = P.mist })
hl("@punctuation.bracket",     { fg = P.slate })
hl("@punctuation.delimiter",   { fg = P.slate })
hl("@punctuation.special",     { fg = P.forge })

hl("@comment",                 { fg = P.slate, italic = true })
hl("@comment.todo",            { fg = P.void,  bg = P.forge, bold = true })
hl("@comment.note",            { fg = P.void,  bg = P.slate, bold = true })
hl("@comment.warning",         { fg = P.void,  bg = P.ember, bold = true })
hl("@comment.error",           { fg = P.void,  bg = P.danger, bold = true })

hl("@tag",                     { fg = P.forge })
hl("@tag.builtin",             { fg = P.forge })
hl("@tag.attribute",           { fg = P.ember, italic = true })
hl("@tag.delimiter",           { fg = P.slate })

hl("@markup.heading",          { fg = P.forge, bold = true })
hl("@markup.heading.1",        { fg = P.forge, bold = true })
hl("@markup.heading.2",        { fg = P.ember, bold = true })
hl("@markup.heading.3",        { fg = P.ash,   bold = true })
hl("@markup.raw",              { fg = P.ember })
hl("@markup.link",             { fg = P.slate, underline = true })
hl("@markup.link.url",         { fg = P.forge, underline = true })
hl("@markup.link.label",       { fg = P.ash })
hl("@markup.list",             { fg = P.forge })
hl("@markup.list.checked",     { fg = P.ok })
hl("@markup.list.unchecked",   { fg = P.depth })
hl("@markup.italic",           { italic = true })
hl("@markup.strong",           { bold = true })
hl("@markup.strikethrough",    { strikethrough = true })
hl("@markup.quote",            { fg = P.slate, italic = true })

-- ── Diagnostics ───────────────────────────────────────────────────────────

hl("DiagnosticError",            { fg = P.danger })
hl("DiagnosticWarn",             { fg = P.forge })
hl("DiagnosticInfo",             { fg = P.slate })
hl("DiagnosticHint",             { fg = P.depth })
hl("DiagnosticOk",               { fg = P.ok })
hl("DiagnosticUnderlineError",   { undercurl = true, sp = P.danger })
hl("DiagnosticUnderlineWarn",    { undercurl = true, sp = P.forge })
hl("DiagnosticUnderlineInfo",    { undercurl = true, sp = P.slate })
hl("DiagnosticUnderlineHint",    { undercurl = true, sp = P.depth })
hl("DiagnosticVirtualTextError", { fg = P.danger, italic = true })
hl("DiagnosticVirtualTextWarn",  { fg = P.forge,  italic = true })
hl("DiagnosticVirtualTextInfo",  { fg = P.slate,  italic = true })
hl("DiagnosticVirtualTextHint",  { fg = P.depth,  italic = true })
hl("DiagnosticSignError",        { fg = P.danger })
hl("DiagnosticSignWarn",         { fg = P.forge })
hl("DiagnosticSignInfo",         { fg = P.slate })
hl("DiagnosticSignHint",         { fg = P.depth })
hl("DiagnosticFloatingError",    { fg = P.danger, bg = P.null })
hl("DiagnosticFloatingWarn",     { fg = P.forge,  bg = P.null })

-- ── LSP ───────────────────────────────────────────────────────────────────

hl("LspReferenceText",           { bg = "#c4622d28" })
hl("LspReferenceRead",           { bg = "#7a9bb828" })
hl("LspReferenceWrite",          { bg = "#c4622d44" })
hl("LspInlayHint",               { fg = P.depth, italic = true })
hl("LspSignatureActiveParameter",{ fg = P.forge, bold = true, underline = true })
hl("LspCodeLens",                { fg = P.depth, italic = true })

-- ── Diff ──────────────────────────────────────────────────────────────────

hl("DiffAdd",     { bg = "#8fb27e20" })
hl("DiffChange",  { bg = "#c4622d20" })
hl("DiffDelete",  { bg = "#d9726420" })
hl("DiffText",    { bg = "#c4622d44", bold = true })
hl("Added",       { fg = P.ok })
hl("Changed",     { fg = P.forge })
hl("Removed",     { fg = P.danger })

-- ── GitSigns ──────────────────────────────────────────────────────────────

hl("GitSignsAdd",              { fg = P.ok })
hl("GitSignsChange",           { fg = P.forge })
hl("GitSignsDelete",           { fg = P.danger })
hl("GitSignsAddNr",            { fg = P.ok })
hl("GitSignsChangeNr",         { fg = P.forge })
hl("GitSignsDeleteNr",         { fg = P.danger })
hl("GitSignsAddLn",            { bg = "#8fb27e14" })
hl("GitSignsChangeLn",         { bg = "#c4622d14" })
hl("GitSignsDeleteLn",         { bg = "#d9726414" })
hl("GitSignsStagedAdd",        { fg = P.ok_bright })
hl("GitSignsStagedChange",     { fg = P.ember })
hl("GitSignsStagedDelete",     { fg = P.iron })

-- ── Telescope ─────────────────────────────────────────────────────────────

hl("TelescopeBorder",          { fg = P.depth,     bg = P.null })
hl("TelescopePromptBorder",    { fg = P.forge,     bg = P.null })
hl("TelescopeResultsBorder",   { fg = P.depth,     bg = P.null })
hl("TelescopePreviewBorder",   { fg = P.depth,     bg = P.null })
hl("TelescopePromptNormal",    { fg = P.parchment, bg = P.null })
hl("TelescopePromptPrefix",    { fg = P.forge })
hl("TelescopePromptCounter",   { fg = P.slate })
hl("TelescopeMatching",        { fg = P.forge,     bold = true })
hl("TelescopeSelection",       { fg = P.parchment, bg = P.forge, bold = true })
hl("TelescopeSelectionCaret",  { fg = P.parchment, bg = P.forge })
hl("TelescopeMultiSelection",  { fg = P.ember,     bold = true })
hl("TelescopeTitle",           { fg = P.forge,     bold = true })
hl("TelescopeResultsTitle",    { fg = P.slate })
hl("TelescopePreviewTitle",    { fg = P.slate })

-- ── nvim-cmp ──────────────────────────────────────────────────────────────

hl("CmpItemAbbr",              { fg = P.parchment })
hl("CmpItemAbbrDeprecated",    { fg = P.stone,  strikethrough = true })
hl("CmpItemAbbrMatch",         { fg = P.forge,  bold = true })
hl("CmpItemAbbrMatchFuzzy",    { fg = P.ember,  bold = true })
hl("CmpItemKind",              { fg = P.slate })
hl("CmpItemKindFunction",      { fg = P.ash })
hl("CmpItemKindMethod",        { fg = P.ash })
hl("CmpItemKindConstructor",   { fg = P.ember })
hl("CmpItemKindClass",         { fg = P.ember })
hl("CmpItemKindVariable",      { fg = P.parchment })
hl("CmpItemKindField",         { fg = P.slate })
hl("CmpItemKindProperty",      { fg = P.slate })
hl("CmpItemKindKeyword",       { fg = P.forge })
hl("CmpItemKindSnippet",       { fg = P.ok_bright })
hl("CmpItemMenu",              { fg = P.depth, italic = true })

-- ── Which-key ─────────────────────────────────────────────────────────────

hl("WhichKey",                 { fg = P.forge })
hl("WhichKeyDesc",             { fg = P.parchment })
hl("WhichKeyGroup",            { fg = P.ember })
hl("WhichKeyBorder",           { fg = P.depth,  bg = P.null })
hl("WhichKeyFloat",            { bg = P.null })
hl("WhichKeyValue",            { fg = P.slate })
hl("WhichKeySeparator",        { fg = P.depth })

-- ── Neotree / Oil ─────────────────────────────────────────────────────────

hl("NeoTreeNormal",            { fg = P.parchment, bg = P.null })
hl("NeoTreeNormalNC",          { fg = P.parchment, bg = P.null })
hl("NeoTreeVertSplit",         { fg = P.null,      bg = P.null })
hl("NeoTreeWinSeparator",      { fg = P.null,      bg = P.null })
hl("NeoTreeEndOfBuffer",       { fg = P.null,      bg = P.null })
hl("NeoTreeRootName",          { fg = P.forge,     bold = true })
hl("NeoTreeFileName",          { fg = P.parchment })
hl("NeoTreeFileNameOpened",    { fg = P.ash,       bold = true })
hl("NeoTreeDirectoryName",     { fg = P.parchment })
hl("NeoTreeDirectoryIcon",     { fg = P.forge })
hl("NeoTreeGitAdded",          { fg = P.ok })
hl("NeoTreeGitModified",       { fg = P.forge })
hl("NeoTreeGitDeleted",        { fg = P.danger })
hl("NeoTreeGitConflict",       { fg = P.danger,    bold = true })
hl("NeoTreeGitUntracked",      { fg = P.slate })
hl("NeoTreeIndentMarker",      { fg = P.depth })
hl("NeoTreeExpander",          { fg = P.depth })

hl("OilDir",                   { fg = P.forge,     bold = true })
hl("OilDirIcon",               { fg = P.forge })
hl("OilLink",                  { fg = P.slate,     underline = true })
hl("OilLinkTarget",            { fg = P.slate,     italic = true })
hl("OilFile",                  { fg = P.parchment })
hl("OilCreate",                { fg = P.ok })
hl("OilDelete",                { fg = P.danger })
hl("OilMove",                  { fg = P.forge })
hl("OilCopy",                  { fg = P.ember })
hl("OilChange",                { fg = P.ember })

-- ── Lazy.nvim ─────────────────────────────────────────────────────────────

hl("LazyH1",                   { fg = P.forge, bold = true })
hl("LazyH2",                   { fg = P.ember, bold = true })
hl("LazyButton",               { fg = P.parchment, bg = P.null })
hl("LazyButtonActive",         { fg = P.parchment, bg = P.forge, bold = true })
hl("LazyCommit",               { fg = P.ok })
hl("LazyCommitIssue",          { fg = P.forge })
hl("LazyCommitType",           { fg = P.ember })
hl("LazySpecial",              { fg = P.forge })
hl("LazyProgressDone",         { fg = P.ok })
hl("LazyProgressTodo",         { fg = P.depth })
hl("LazyNoCond",               { fg = P.iron })
hl("LazyReasonFt",             { fg = P.slate })
hl("LazyReasonKeys",           { fg = P.ember })
hl("LazyReasonPlugin",         { fg = P.forge })
hl("LazyReasonStart",          { fg = P.ok })

-- ── Mason ─────────────────────────────────────────────────────────────────

hl("MasonHeader",              { fg = P.void, bg = P.forge, bold = true })
hl("MasonHeaderSecondary",     { fg = P.void, bg = P.depth, bold = true })
hl("MasonHighlight",           { fg = P.forge })
hl("MasonHighlightBlock",      { fg = P.void, bg = P.forge })
hl("MasonHighlightBlockBold",  { fg = P.void, bg = P.forge, bold = true })
hl("MasonMuted",               { fg = P.stone })
hl("MasonMutedBlock",          { fg = P.parchment, bg = P.depth })
hl("MasonLink",                { fg = P.slate, underline = true })

-- ── Mini plugins ──────────────────────────────────────────────────────────

hl("MiniStatuslineModeNormal",  { fg = P.void, bg = P.forge, bold = true })
hl("MiniStatuslineModeInsert",  { fg = P.void, bg = P.ok,    bold = true })
hl("MiniStatuslineModeVisual",  { fg = P.void, bg = P.ember, bold = true })
hl("MiniStatuslineModeReplace", { fg = P.void, bg = P.danger, bold = true })
hl("MiniStatuslineModeCommand", { fg = P.void, bg = P.slate, bold = true })
hl("MiniStatuslineModeOther",   { fg = P.void, bg = P.depth, bold = true })
hl("MiniStatuslineFilename",    { fg = P.parchment, bg = P.null })
hl("MiniStatuslineFileinfo",    { fg = P.slate,     bg = P.null })
hl("MiniStatuslineDevinfo",     { fg = P.forge,     bg = P.null })
hl("MiniStatuslineInactive",    { fg = P.slate,     bg = P.null })

hl("MiniTablineTabpagesection", { fg = P.void, bg = P.forge, bold = true })
hl("MiniTablineCurrent",        { fg = P.parchment, bg = P.forge, bold = true })
hl("MiniTablineVisible",        { fg = P.slate,     bg = P.null })
hl("MiniTablineHidden",         { fg = P.stone,     bg = P.null })
hl("MiniTablineModifiedCurrent",{ fg = P.ash,       bg = P.forge, bold = true })
hl("MiniTablineModifiedVisible",{ fg = P.ember,     bg = P.null })
hl("MiniTablineModifiedHidden", { fg = P.iron,      bg = P.null })

hl("MiniIndentscopeSymbol",     { fg = P.depth })
hl("MiniJump",                  { fg = P.void, bg = P.forge })
hl("MiniJump2dSpot",            { fg = P.forge, bg = P.null, bold = true })
hl("MiniCursorword",            { bg = "#c4622d28" })
hl("MiniCursorwordCurrent",     { bg = "#c4622d44" })
hl("MiniNotifyNormal",          { fg = P.parchment, bg = P.null })
hl("MiniNotifyBorder",          { fg = P.forge,     bg = P.null })
hl("MiniPickBorder",            { fg = P.depth,     bg = P.null })
hl("MiniPickBorderBusy",        { fg = P.forge,     bg = P.null })
hl("MiniPickBorderText",        { fg = P.forge,     bg = P.null, bold = true })
hl("MiniPickMatchCurrent",      { fg = P.parchment, bg = P.forge, bold = true })
hl("MiniPickMatchMarked",        { fg = P.ember,     bold = true })
hl("MiniPickMatchRanges",        { fg = P.forge,     bold = true })
hl("MiniPickNormal",             { fg = P.parchment, bg = P.null })
hl("MiniPickPrompt",             { fg = P.forge,     bg = P.null })

-- ── Illuminate ────────────────────────────────────────────────────────────

hl("IlluminatedWordText",  { bg = "#c4622d28" })
hl("IlluminatedWordRead",  { bg = "#7a9bb828" })
hl("IlluminatedWordWrite", { bg = "#c4622d44" })

-- ── Render-markdown ───────────────────────────────────────────────────────

hl("RenderMarkdownH1Bg",  { bg = "#c4622d28" })
hl("RenderMarkdownH2Bg",  { bg = "#e8a88218" })
hl("RenderMarkdownH3Bg",  { bg = "#f7e8df10" })
hl("RenderMarkdownCode",  { bg = P.null })
hl("RenderMarkdownBullet",{ fg = P.forge })
hl("RenderMarkdownQuote", { fg = P.slate,  italic = true })
hl("RenderMarkdownLink",  { fg = P.forge,  underline = true })
hl("RenderMarkdownMath",  { fg = P.ember })
hl("RenderMarkdownSign",  { fg = P.forge,  bg = P.void })
hl("RenderMarkdownDash",  { fg = P.depth })
hl("RenderMarkdownTableHead",     { fg = P.parchment, bold = true })
hl("RenderMarkdownTableRow",      { fg = P.parchment })
hl("RenderMarkdownTableFill",     { fg = P.depth })

-- ── :terminal colours ─────────────────────────────────────────────────────
-- Mirrors your terminal palette exactly so :terminal is consistent.

vim.g.terminal_color_0  = P.void        -- black     (color0)
vim.g.terminal_color_1  = P.danger      -- red       (color1)
vim.g.terminal_color_2  = P.ok         -- green     (color2)
vim.g.terminal_color_3  = P.forge      -- yellow    (color3 / cursor)
vim.g.terminal_color_4  = P.slate      -- blue      (color4)
vim.g.terminal_color_5  = P.ember      -- magenta   (color5)
vim.g.terminal_color_6  = P.mist       -- cyan      (color6)
vim.g.terminal_color_7  = P.parchment  -- white     (color7)
vim.g.terminal_color_8  = P.depth      -- br black  (color8 / selection bg)
vim.g.terminal_color_9  = P.danger     -- br red    (color9)
vim.g.terminal_color_10 = P.ok_bright  -- br green  (color10)
vim.g.terminal_color_11 = P.ember      -- br yellow (color11)
vim.g.terminal_color_12 = P.slate      -- br blue   (color12)
vim.g.terminal_color_13 = P.ash        -- br magenta(color13)
vim.g.terminal_color_14 = P.mist       -- br cyan   (color14)
vim.g.terminal_color_15 = P.parchment  -- br white  (color15)

return P