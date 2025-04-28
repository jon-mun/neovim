return {
  -- add gruvbox
  {
    "catppuccin/nvim",
    name = "catppuccin", -- Recommended to name it
    priority = 1000, -- Ensure it loads early
    opts = {
      flavour = "mocha", -- Default flavour
      -- Other catppuccin specific options can go here if needed later
      -- e.g., integrations = { ... }
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
