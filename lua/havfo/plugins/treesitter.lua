return {
	'nvim-treesitter/nvim-treesitter',
	dependencies = { 'nvim-treesitter/nvim-treesitter-textobjects' },
	build = ':TSUpdate',
	event = { 'BufReadPre', 'BufNewFile' },
	config = function()
		local treesitter = require('nvim-treesitter.configs')

		treesitter.setup({
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			textobjects = {
				select = {
					enable = true,

					lookahead = true,

					keymaps = {
						-- You can use the capture groups defined in textobjects.scm
						["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
						["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
						["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
						["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },

						["a:"] = { query = "@property.outer", desc = "Select outer part of an object property" },
						["i:"] = { query = "@property.inner", desc = "Select inner part of an object property" },
						["l:"] = { query = "@property.lhs", desc = "Select left part of an object property" },
						["r:"] = { query = "@property.rhs", desc = "Select right part of an object property" },

						["at"] = { query = "@type.outer", desc = "Select outer part of a type definition" },
						["it"] = { query = "@type.inner", desc = "Select inner part of a type definition" },
						["lt"] = { query = "@type.lhs", desc = "Select left part of a type definition" },
						["rt"] = { query = "@type.rhs", desc = "Select right part of a type definition" },

						["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
						["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

						["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
						["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

						["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
						["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

						["af"] = { query = "@call.outer", desc = "Select outer part of a function call" },
						["if"] = { query = "@call.inner", desc = "Select inner part of a function call" },

						["am"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
						["im"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },

						["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
						["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
					},
				},
			},
		})
	end,
}
