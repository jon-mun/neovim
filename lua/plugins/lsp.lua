return {
  -- Make sure nvim-lspconfig is listed as a dependency or is configured here
  {
    "neovim/nvim-lspconfig",

    -- Optional: Add other configurations like servers setup, opts, etc.
    -- Add or modify the key table:
    keys = {
      -- Add or modify the keys table
      { "gh", vim.lsp.buf.hover, desc = "Hover documentation (gh)" },
    },
  },

  -- Potentially other LSP-related plugins like mason-lspconfig, etc.
}
