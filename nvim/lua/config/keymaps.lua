-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local bind = vim.keymap.set
local opts = { silent = true, noremap = true }
--
-- -- for russian layout
bind("i", "<c-х>", "<C-[>", opts)
bind("n", "л", "gk", opts)
bind("n", "о", "gj", opts)
bind("i", "<C-г>", "<C-G>u<C-U>", opts)
bind("i", "<C-ц>", "<C-G>u<C-W>", opts)
--
-- bind("n", "[c", function()
--   require("treesitter-context").go_to_context()
-- end)
--
bind("n", "<leader>[", "<Cmd>call append(line('.') - 1, repeat([''], v:count1))<CR>", opts)
bind("n", "<leader>]", "<Cmd>call append(line('.'),     repeat([''], v:count1))<CR>", opts)
--
-- vim.keymap.set("n", "<leader>fj", ":Neotree reveal<CR>", {})
-- vim.keymap.set('n', '<leader>fa', ':Telescope telescope-alternate alternate_file<CR>', {})
--
bind("n", "<leader>o", "<cmd>:Other<CR>", opts)

bind('i', 'jk', '<Esc>', opts)

-- bind({ 'n' }, '<C-k>', function()
--   require('lsp_signature').toggle_float_win()
-- end, { silent = true, noremap = true, desc = 'toggle signature' })
--
-- bind({ 'n' }, '<Leader>k', function()
--   vim.lsp.buf.signature_help()
-- end, { silent = true, noremap = true, desc = 'toggle signature' })

