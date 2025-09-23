return {
  "grafana/vim-alloy",
  -- You can optionally specify a version/tag if you want to pin it,
  -- but usually, letting it pull the latest from the main branch is fine for most users.
  -- version = "*", -- Or a specific tag like "v0.1.0" if available and preferred

  -- The plugin itself should handle filetype detection for .alloy files.
  -- However, you can explicitly tell lazy.nvim about the filetype if you wish,
  -- or if the plugin needs help being triggered correctly.
  ft = { "alloy", "river" }, -- 'alloy' is the primary, 'river' is also used for the language.

  -- You can also use 'event' to specify when the plugin should load.
  -- For filetype/syntax plugins, loading on filetype detection or buffer read is common.
  -- The 'ft' option above often handles this implicitly.
  -- If you notice issues, you might try:
  -- event = { "BufReadPre *.alloy", "BufNewFile *.alloy", "FileType alloy", "FileType river" },

  -- No specific `config` function is usually needed for simple syntax plugins
  -- unless the plugin's documentation specifies it for Neovim/Lua setup.
  -- The vim-alloy plugin is primarily Vimscript-based and should set itself up.
}
