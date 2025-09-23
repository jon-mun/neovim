return {
  -- This is the main plugin spec for nvim-lspconfig.
  {
    "neovim/nvim-lspconfig",
    -- The 'opts' table is the correct way to add a new server in LazyVim.
    opts = {
      -- This 'servers' table will be merged with LazyVim's default servers.
      servers = {
        -- Here we are manually telling lspconfig about our server.
        -- The empty table {} means "start this server with default settings".
        -- Lspconfig is smart enough to find the executable installed by Mason.
        systemd_ls = {},
      },
    },
  },

  -- This second spec is for our custom autocommand to detect the filetype.
  -- We'll attach the config to a common plugin like plenary to ensure it loads.
  {
    "nvim-lua/plenary.nvim",
    -- The 'config' function runs after the plugin is loaded.
    config = function()
      vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
        group = vim.api.nvim_create_augroup("CustomFiletypes", { clear = true }),
        pattern = {
          "*.service",
          "*.socket",
          "*.device",
          "*.mount",
          "*.automount",
          "*.scope",
          "*.slice",
          "*.path",
          "*.timer",
          "*.swap",
          "*.target",
          "*.network",
          "*.netdev",
          "*.link",
          "*.nspawn",
        },
        callback = function()
          vim.bo.filetype = "systemd"
        end,
      })
    end,
  },
}
