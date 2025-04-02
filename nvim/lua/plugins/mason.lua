return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "flake8",
        "ruff",
        "mypy",
        "pyright",
      },
    },
  },
}
