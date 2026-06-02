-- nullforge Omarchy theme spec
-- Place at: ~/.config/omarchy/themes/nullforge/neovim.lua
--
-- The colorscheme file itself lives at:
--   ~/.config/nvim/colors/nullforge.lua
-- It's already on the runtimepath via your nvim config, so no plugin needed.

return {
  {
    "sailfact/nullforge.nvim",
    name = "nullforge",
    priority = 1000,
    opts = {
      transparent = true,
    },
    config = function(_, opts)
      require("nullforge").setup(opts)
      vim.cmd.colorscheme("nullforge")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nullforge",
    },
  },
}