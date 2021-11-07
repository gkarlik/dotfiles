vim.opt.list = true
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("space:⋅")
vim.opt.termguicolors = true

local configs = require("lspconfig/configs")
local capabilities = vim.lsp.protocol.make_client_capabilities()

require("lspconfig").gopls.setup({
	cmd = { "gopls", "serve" },
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
			},
			staticcheck = true,
		},
	},
})

require('lspconfig').omnisharp.setup({
    cmd = { "/home/gkarlik/.cache/omnisharp-vim/omnisharp-roslyn/run", "--languageserver" , "--hostPID", tostring(pid) },
    init_options = {documentFormatting = true, codeAction = false},
})

local saga = require('lspsaga')
saga.init_lsp_saga({
    code_action_prompt = {
        enable = false
    }
})

require("indent_blankline").setup {
	show_end_of_line = true,
	space_char_blankline = " ",
	show_current_context = true,
	show_trailing_blankline_indent = false,
}

require('telescope').setup{
  defaults = {
	file_sorter = require('telescope.sorters').get_fzy_sorter,
	color_devicons = true,

	file_previewer = require('telescope.previewers').vim_buffer_cat.new,

    mappings = {
      i = {}
    }
  },
  pickers = {},
  extensions = {}
}

require("telescope").load_extension('fzy_native')
