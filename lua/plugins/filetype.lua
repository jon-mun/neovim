return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    vim.list_extend(opts.ensure_installed, { "inifile" })
  end,
  config = function()
    vim.filetype.add({
      extension = {
        service = "systemd",
        socket = "systemd",
        device = "systemd",
        mount = "systemd",
        automount = "systemd",
        scope = "systemd",
        slice = "systemd",
        timer = "systemd",
        swap = "systemd",
        target = "systemd",
        path = "systemd",
        nspawn = "systemd",
      },
    })
  end,
}
