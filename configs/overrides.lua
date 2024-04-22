local M = {}

M.treesitter = {
	ensure_installed = {
		"c",
		"cpp",
		"rust",
		"html",
		"css",
		"javascript",
		"typescript",
		"tsx",
		"json",
		"prisma",
		"graphql",
		"ruby",
		"vue",
		"svelte",
		"python",
		"markdown",
		"java",
		"terraform",
		"bash",
		"yaml",
		"dockerfile",
	},
	autotag = { enable = true },
	indent = { enable = true },
}

return M
