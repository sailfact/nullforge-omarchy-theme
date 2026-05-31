return {
	{
		"bjarneo/aether.nvim",
		branch = "v2",
		name = "aether",
		priority = 1000,
		opts = {
			transparent = false,
			colors = {
				-- Background colors
				bg = "#0a1420",       -- void: deepest bg
				bg_dark = "#06101a",  -- below void: code blocks, sidebars
				bg_highlight = "#1a2a3a", -- null: line highlight, selection
 
				-- Foreground colors
				fg = "#f2ece6",       -- parchment: default text, object properties
				fg_dark = "#3d5a75",  -- depth: inactive elements, secondary text
				comment = "#1a2a3a",  -- null: comments, gutter, disabled states
 
				-- Accent colors
				-- red: Errors, diagnostics, tags, deletions, breakpoints
				red = "#a13c2a",      -- danger
 
				-- orange: Constants, numbers, current line number, git modifications
				orange = "#c4622d",   -- forge (brand accent)
 
				-- yellow: Types, classes, constructors, warnings, booleans
				yellow = "#e8a882",   -- ember
 
				-- green: Strings, success states, git additions
				green = "#8fb27e",    -- color2 (terminal green)
 
				-- cyan: Parameters, regex, preprocessor, hints, properties
				cyan = "#a4c294",     -- bright green / color10
 
				-- blue: Functions, keywords, directories, links, info
				blue = "#7a9bb8",     -- slate (null-200, accent)
 
				-- purple: Storage keywords, special keywords, namespaces
				purple = "#dce6f0",   -- mist (null-50, near-white blue)
 
				-- magenta: Function declarations, exception handling
				magenta = "#c4622d",  -- forge (same as orange — DS has no purple/magenta)
			},
			on_highlights = function(hl, c)
				-- Surfaces
				hl.CursorLine    = { bg = "#1a2a3a" }          -- null: current line
				hl.CursorLineNr  = { fg = c.orange, bold = true } -- forge: current line number
				hl.LineNr        = { fg = "#3d5a75" }           -- depth: gutter numbers
				hl.SignColumn    = { bg = "#0a1420" }           -- void: keep gutter clean
 
				-- Selection
				hl.Visual        = { bg = "#3d5a75", fg = "#dce6f0" } -- depth bg, mist fg
 
				-- Borders & splits
				hl.VertSplit     = { fg = "#1a2a3a" }
				hl.WinSeparator  = { fg = "#1a2a3a" }
 
				-- Statusline
				hl.StatusLine    = { bg = "#1a2a3a", fg = "#7a9bb8" }
				hl.StatusLineNC  = { bg = "#0a1420", fg = "#3d5a75" }
 
				-- Pmenu (autocomplete)
				hl.Pmenu         = { bg = "#1a2a3a", fg = "#f2ece6" }
				hl.PmenuSel      = { bg = "#3d5a75", fg = "#dce6f0", bold = true }
				hl.PmenuSbar     = { bg = "#0a1420" }
				hl.PmenuThumb    = { bg = "#3d5a75" }
 
				-- Diagnostics
				hl.DiagnosticUnderlineError = { undercurl = true, sp = "#a13c2a" }
				hl.DiagnosticUnderlineWarn  = { undercurl = true, sp = "#c4622d" }
				hl.DiagnosticUnderlineHint  = { undercurl = true, sp = "#7a9bb8" }
				hl.DiagnosticUnderlineInfo  = { undercurl = true, sp = "#3d5a75" }
 
				-- Git diff (in gutter)
				hl.GitSignsAdd    = { fg = "#8fb27e" }
				hl.GitSignsChange = { fg = "#c4622d" }
				hl.GitSignsDelete = { fg = "#a13c2a" }
			end,
		},
		config = function(_, opts)
			require("aether").setup(opts)
			vim.cmd.colorscheme("aether")
 
			-- Enable hot reload
			require("aether.hotreload").setup()
		end,
	},
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "aether",
		},
	},
}