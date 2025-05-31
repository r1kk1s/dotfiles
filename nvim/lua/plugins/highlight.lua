return {
  "brenoprata10/nvim-highlight-colors",
  enabled = true,
  config = function()
    vim.opt.termguicolors = true
    require('nvim-highlight-colors').setup({
      render = 'virtual'
    })
    require("cmp").setup({
      formatting = {
        format = require("nvim-highlight-colors").format
      }
    })
  end,
}
