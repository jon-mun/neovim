return {
  -- This is the main configuration for nvim-lspconfig
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- This is the key part you were missing.
      -- It adds systemd_ls to the list of servers that nvim-lspconfig
      -- will set up and manage.
      servers = {
        systemd_ls = {
          filetypes = {
            "systemd",
            "service",
            "socket",
            "device",
            "mount",
            "automount",
            "scope",
            "slice",
            "timer",
            "swap",
            "target",
            "path",
          },
        }, -- The empty table {} means use default settings
      },
    },
    -- Your custom keymap is perfectly fine here.
    keys = {
      { "gh", vim.lsp.buf.hover, desc = "Hover documentation (gh)" },
    },
  },
}
