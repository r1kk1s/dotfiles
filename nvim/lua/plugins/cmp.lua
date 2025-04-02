return {
  'hrsh7th/nvim-cmp',
	dependencies = {
	  'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
	  'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-emoji',
		'hrsh7th/cmp-nvim-lsp-signature-help',
		'hrsh7th/cmp-nvim-lua'
	},
  version = false,
  event = "InsertEnter",
  enabled = true,
	config = function()
	  require('cmp').setup({})
	end
}
