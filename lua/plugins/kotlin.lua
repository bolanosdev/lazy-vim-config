--lua require('dap-kotlin').setup()

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "kotlin" })
    end,
  },

  -- correctly setup mason lsp / dap extensions
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "kotlin-debug-adapter" })
    end,
  },

  {
    "Mgenuit/nvim-dap-kotlin",
    config = true,
    opts = function()
      setup = {
        dap_command = "kotlin-debug-adapter",
        project_root = "${workspaceFolder}",
        enable_logging = false,
        log_file_path = "",
      }
    end,
  },
}
