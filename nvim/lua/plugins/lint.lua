return {
    "mfussenegger/nvim-lint",
    enabled = true,
    event = {
      'BufReadPre',
      'BufNewFile',
    },
    config = function()
      local lint = require("lint")
      lint.linters_by_ft = {
          javascript = { "eslint_d" },
          typescript = { "eslint_d" },
          javascriptreact = { "eslint_d" },
          typescriptreact = { "eslint_d" },
          python = { "mypy", "flake8" },
      }
      vim.api.nvim_create_autocmd({ "BufEnter", "InsertLeave", "BufWritePost" }, {
        callback = function()
          local lint_status, lint = pcall(require, "lint")
          if lint_status then
            lint.try_lint()
          end
        end,
      })
      vim.keymap.set('n', '<leader>cL', function()
        lint.try_lint()
      end, { desc = 'Trigger linting for current file' })
    end
}
