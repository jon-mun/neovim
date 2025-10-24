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
  {
    "marko-cerovac/material.nvim",
    -- https://github.com/marko-cerovac/material.nvim
    name = "material",
    priority = 1000, -- make sure to load this before all the other start plugins
    init = function()
      vim.g.material_style = "deep ocean"
    end,
    opts = {
      -- material_style is now set in the init function above
      -- You can choose between "darker", "palenight", "oceanic", "deep ocean" and "lighter"
      contrast = {
        terminal = false, -- Enable contrast for the built-in terminal
        sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
        floating_windows = false, -- Enable contrast for floating windows
        cursor_line = false, -- Enable darker background for the cursor line
        lsp_virtual_text = false, -- Enable contrasted background for lsp virtual text
        non_current_windows = false, -- Enable contrasted background for non-current windows
        filetypes = {}, -- Specify which filetypes get the contrasted (darker) background
      },

      styles = { -- Give comments style such as bold, italic, underline etc.
        comments = { italic = false },
        strings = { bold = true },
        keywords = { underline = false },
        -- functions = { bold = true, undercurl = true },
        variables = {},
        operators = {},
        types = {},
      },

      plugins = { -- Uncomment the plugins that you use to highlight them
        -- Available plugins:
        -- "blink",
        -- "coc",
        -- "colorful-winsep",
        -- "dap",
        -- "dashboard",
        -- "eyeliner",
        -- "fidget",
        -- "flash",
        "gitsigns",
        "harpoon",
        -- "hop",
        -- "illuminate",
        -- "indent-blankline",
        -- "lspsaga",
        "mini",
        "neo-tree",
        -- "neogit",
        -- "neorg",
        -- "neotest",
        "noice",
        "nvim-cmp",
        -- "nvim-navic",
        -- "nvim-notify",
        "nvim-tree",
        -- "nvim-web-devicons",
        -- "rainbow-delimiters",
        -- "sneak",
        "telescope",
        -- "trouble",
        -- "which-key",
      },

      disable = {
        colored_cursor = false, -- Disable the colored cursor
        borders = false, -- Disable borders between vertically split windows
        background = false, -- Prevent the theme from setting the background (NeoVim then uses your terminal background)
        term_colors = false, -- Prevent the theme from setting terminal colors
        eob_lines = false, -- Hide the end-of-buffer lines
      },

      high_visibility = {
        lighter = false, -- Enable higher contrast text for lighter style
        darker = true, -- Enable higher contrast text for darker style
      },

      lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )

      async_loading = true, -- Load parts of the theme asynchronously for faster startup (turned on by default)

      custom_colors = nil, -- If you want to override the default colors, set this to a function

      custom_highlights = { -- Overwrite highlights with your own
        Visual = { bg = "#303540" },
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "material",
    },
  },
}
