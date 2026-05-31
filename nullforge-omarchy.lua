-- nullforge Omarchy theme spec
-- Place at: ~/.config/omarchy/themes/nullforge/neovim.lua
--
-- The colorscheme file itself lives at:
--   ~/.config/nvim/colors/nullforge.lua
-- It's already on the runtimepath via your nvim config, so no plugin needed.

return {
  {
    -- Dummy spec pointing at your nvim config dir so lazy loads it
    dir = vim.fn.stdpath("config"),
    name = "nullforge",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("nullforge")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "nullforge" },
  },
}
