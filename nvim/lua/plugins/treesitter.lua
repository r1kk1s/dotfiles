return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "lua", "python", "javascript", "typescript"},
      endwise = {
        enable = true,
      },
      -- textobjects = {
      --   swap = {
      --     enable = true,
      --     swap_next = {
      --       ["<leader>a"] = "@parameter.inner",
      --     },
      --     swap_previous = {
      --       ["<leader>A"] = "@parameter.inner",
      --     },
      --   },
      -- },
    },
    -- opts = function(_, opts)
    -- opts.endwise = {
    --   enable = true,
    -- }
    -- opts.swap = {
    --   enable = true,
    -- }
    --
    -- opts.autotag = {
    --   enable = true,
    -- }
    --
    -- opts.select = {
    --   enable = true,
    -- }
    -- opts.textobjects = {
    --   lsp_interop = {
    --     enable = true,
    --   },
    -- }
    -- end,
  },
}
