return {
	'saghen/blink.cmp',
	dependencies = { 'rafamadriz/friendly-snippets' },

	version = '1.*',

	opts = {
		keymap = {
			preset = 'default',
			[ '<CR>' ] = { 'select_and_accept', 'fallback' },
		},

		appearance = {
			nerd_font_variant = 'mono'
		},

		completion = {
			documentation = { auto_show = true },
			accept = { auto_brackets = { enabled = true }, },
		},

		sources = {
			default = { 'lsp', 'path', 'snippets', 'buffer' },
		},

		fuzzy = { implementation = "prefer_rust_with_warning" }
	},

	opts_extend = { "sources.default" }
}
