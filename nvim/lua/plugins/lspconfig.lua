local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = {
        enabled = true,
      },
      diagnostics = {
        virtual_text = false,
        float = {
          border = "rounded",
          format = function(diagnostic)
            return string.format('[%s] => %s', diagnostic.source, diagnostic.message)
          end,
        },
      },
      servers = {
        tsp_server = {},
        pyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "off",
                -- diagnosticMode = "off",
              }
            }
          },
          capabilities = capabilities,
          on_attach = function(client, bufnr)
            require "lsp_signature".on_attach({
              bind = true,
              handler_opts = {
                border = "rounded"
              }
            }, bufnr)
          end,
        },
        pylsp = {
          enabled = false,
          -- settings = {
          --   pylsp = {
          --     configurationSources = { "flake8", "ruff", "rope_autoimport", "pylsp_mypy" },
          --     plugins = {
          --       rope_autoimport = { enabled = true },
          --       flake8 = { enabled = true, },
          --       pyflakes = { enabled = false },
          --       pycodestyle = { enabled = false },
          --       pylsp_mypy = { enabled = true },
          --       jedi_signature_help = { enabled = true },
          --       jedi_completion = {
          --           include_params = true,
          --           fuzzy = true,
          --       },
          --     },
          --   },
          -- },
        },
      },
        -- sorbet = {},
        -- cssls = {},
        -- https://github.com/Shopify/ruby-lsp/issues/2347
        -- ruby_lsp = {
        --   mason = false,
        --   cmd = { vim.fn.expand("~/.asdf/shims/ruby-lsp") },
        -- },
        -- kotlin_language_server = {},
        -- https://www.arthurkoziel.com/json-schemas-in-neovim/
        -- helm_ls = {},
        -- https://github.com/typescript-language-server/typescript-language-server/pull/218
        -- https://github.com/microsoft/TypeScript/issues/13270
        -- tsserver = {
        --   settings = {
        --     javascript = {
        --       inlayHints = {
        --         parameterNames = { enabled = "literals" },
        --         parameterTypes = { enabled = true },
        --         variableTypes = { enabled = true },
        --         propertyDeclarationTypes = { enabled = true },
        --         functionLikeReturnTypes = { enabled = true },
        --         enumMemberValues = { enabled = true },
        --       },
        --       typescript = {
        --         -- format = {
        --         --   indentSize = vim.o.shiftwidth,
        --         --   convertTabsToSpaces = vim.o.expandtab,
        --         --   tabSize = vim.o.tabstop,
        --         -- },
        --         updateImportsOnFileMove = {
        --           enabled = "always",
        --         },
        --         inlayHints = {
        --           parameterNames = { enabled = "literals" },
        --           parameterTypes = { enabled = true },
        --           variableTypes = { enabled = true },
        --           propertyDeclarationTypes = { enabled = true },
        --           functionLikeReturnTypes = { enabled = true },
        --           enumMemberValues = { enabled = true },
        --         },
        --         -- enables project wide error reporting similar to vscode
        --         -- tsserver = {
        --         --   experimental = {
        --         --     enableProjectDiagnostics = true,
        --         --   },
        --         -- },
        --       },
        --     },
        --     tsserver = {
        --       init_options = {
        --         preferences = {
        --           quoteStyle = "single",
        --         },
        --       },
        --     },
        --   },
        -- },
        -- html = {
        --   -- filetypes = { "html", "blade" },
        -- },
        -- bashls = {},
        -- lemminx = {},
        ltex = {
          settings = {
            ltex = {
              language = "ru-RU",
            },
          },
        },
      },
    },
}

