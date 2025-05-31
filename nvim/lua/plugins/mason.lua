return {
  {
    "mason-org/mason.nvim",
    version = "1.11.0",
    opts = {
      ensure_installed = {
        "hadolint",
        "flake8",
        "ruff",
        "mypy",
        "pyright",
        "protols",
      },
    },
  },
  { "mason-org/mason-lspconfig.nvim", version = "1.32.0" },
}
