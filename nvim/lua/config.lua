vim.opt.list = true
vim.opt.listchars:append("eol:↴")
vim.opt.listchars:append("space:⋅")
vim.opt.termguicolors = true

local configs = require("lspconfig/configs")
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require("lspconfig").gopls.setup({
    capabilities = capabilities,
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
    cmd = { "/home/gkarlik/.cache/omnisharp-vim/omnisharp-roslyn/OmniSharp", "--languageserver" , "--hostPID", tostring(pid) },
    init_options = {documentFormatting = true, codeAction = false},
})

require('lspconfig').yamlls.setup({
    capabilities = capabilities,
    settings = {
        yaml = {
            schemas = {
                ["kubernetes"] = "*.yaml",
            },
            format = { enable = true },
            schemaStore = {
                 url = "https://www.schemastore.org/api/json/catalog.json",
                 enable = true,
            },
            completion = true,
            validate = true
        }
    }
})

require('lspconfig').rust_analyzer.setup({
    capabilities=capabilities,
    settings = {
      ["rust-analyzer"] = {
        checkOnSave = {
          command = "clippy"
        },
      }
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
    file_ignore_patterns = {"bin", "obj", "build", "node_modules", "vendored", "vendor"},

	file_previewer = require('telescope.previewers').vim_buffer_cat.new,

    mappings = {
      i = {}
    }
  },
  pickers = {},
  extensions = {}
}

local cmp = require'cmp'

cmp.setup({
snippet = {
    expand = function(args)
    require('luasnip').lsp_expand(args.body)
    end,
},
window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
},
mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
}),
sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
}, {
    { name = 'buffer' },
})
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
sources = cmp.config.sources({
    { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
}, {
    { name = 'buffer' },
})
})

require("telescope").load_extension('fzy_native')
