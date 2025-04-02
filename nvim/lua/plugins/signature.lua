return {
  {
    "ray-x/lsp_signature.nvim",
    enabled = true,
    event = "InsertEnter",
    config = function()
      require("lsp_signature").setup({
        bind = true, -- Автоматически привязывать подсказку к курсору
        handler_opts = {
          border = "rounded", -- Стиль рамки
        },
        hint_enable = true, -- Показывать подсказки
        hi_parameter = "Visual", -- Подсветка текущего параметра
        toggle_key = "<leader>K", -- Горячая клавиша для переключения (Alt + s)
      })
    end,
  },
}
