return {
  {
    "mason-org/mason.nvim",
    version = "^2.1.0",
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
  { "mason-org/mason-lspconfig.nvim", version = "^2.1.0" },
}
