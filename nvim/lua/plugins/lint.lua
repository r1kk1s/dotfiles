return {
  "mfussenegger/nvim-lint",
  enabled = true,
  event = { "InsertLeave", "BufNewFile", "InsertEnter" },
  config = function()
    local lint_status, lint = pcall(require, "lint")
    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      typescript = { "eslint_d" },
      javascriptreact = { "eslint_d" },
      typescriptreact = { "eslint_d" },
      python = { "mypy", "flake8" },
      dockerfile = { "hadolint" },
    }
    vim.api.nvim_create_autocmd({ "InsertLeave" }, {
      callback = function()
        if lint_status then
          lint.try_lint()
        end
      end,
    })
    vim.keymap.set("n", "<leader>cL", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
