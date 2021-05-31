O = {
    auto_close_tree = 0,
    auto_complete = true,
    colorscheme = 'snazzy',
    hidden_files = true,
    wrap_lines = false,
    number = true,
    relative_number = true,
    shell = 'bash',
    timeoutlen = 100,
    shiftwidth = 2,
    encoding = 'UTF-8',
    tabstop = 2,
    expandtab = true,

    -- @usage pass a table with your desired languages
    treesitter = {
        ensure_installed = {"javscript", "typescript", "dart", "java", "kotlin"},
        ignore_install = {"haskell",  "php"},
        highlight = {enabled = true},
        playground = {enabled = true},
        rainbow = {enabled = false}
    },

    database = {save_location = '~/.config/nvcode_db', auto_execute = 1},
    python = {
        linter = '',
        -- @usage can be 'yapf', 'black'
        formatter = '',
        autoformat = false,
        isort = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = " "}, signs = true, underline = true},
		analysis = {type_checking = "basic", auto_search_paths = true, use_library_code_types = true}
    },
    dart = {
        sdk_path = 'C:\\tools\\dart-sdk\\bin\\snapshots\\analysis_server.dart.snapshot',
        diagnostics = {virtual_text = {spacing = 0, prefix = " "}, signs = true, underline = true}

    },
    lua = {
        -- @usage can be 'lua-format'
        language_server_path = 'E:\\Apps\\lua-language-server',
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = " "}, signs = true, underline = true}
    },
    sh = {
        -- @usage can be 'shellcheck'
        linter = '',
        -- @usage can be 'shfmt'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}
    },
    tsserver = {
        -- -- @usage can be 'eslint'
        -- linter = '',
        -- -- @usage can be 'prettier'
        formatter = 'prettier',
        autoformat = true,
        diagnostics = {virtual_text = {spacing = 0, prefix = " "}, signs = true, underline = true}
    },
    json = {
        -- @usage can be 'prettier'
        formatter = '',
        autoformat = false,
        diagnostics = {virtual_text = {spacing = 0, prefix = " "}, signs = true, underline = true}
    },
    tailwindls = {filetypes = {'html', 'css', 'scss', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'}},
    clang = {diagnostics = {virtual_text = {spacing = 0, prefix = ""}, signs = true, underline = true}},
	ruby = {
		diagnostics = {virtualtext = {spacing = 0, prefix = ""}, signs = true, underline = true},
		filetypes = {'rb', 'erb', 'rakefile'}
	},
    -- css = {formatter = '', autoformat = false, virtual_text = true},
    -- json = {formatter = '', autoformat = false, virtual_text = true}

	dashboard = {
		custom_header = {
'   /$$$$$$                                                /$$                 /$$                 ',
'  /$$__  $$                                              | $$                | $$                 ',
' | $$  \\ $$ /$$$$$$$   /$$$$$$   /$$$$$$   /$$$$$$       | $$        /$$$$$$ | $$$$$$$   /$$$$$$$ ',
' | $$  | $$| $$__  $$ /$$__  $$ |____  $$ /$$__  $$      | $$       |____  $$| $$__  $$ /$$_____/ ',
' | $$  | $$| $$  \\ $$| $$  \\ $$  /$$$$$$$| $$  \\__/      | $$        /$$$$$$$| $$  \\ $$|  $$$$$$  ',
' | $$  | $$| $$  | $$| $$  | $$ /$$__  $$| $$            | $$       /$$__  $$| $$  | $$ \\____  $$ ',
' |  $$$$$$/| $$  | $$| $$$$$$$/|  $$$$$$$| $$            | $$$$$$$$|  $$$$$$$| $$$$$$$/ /$$$$$$$/ ',
'  \\______/ |__/  |__/| $$____/  \\_______/|__/            |________/ \\_______/|_______/ |_______/  ',
'                     | $$                                                                        ',
'                     | $$                                                                        ',
'                     |__/                                                                        ',
'                                                                                                ',
		},
		footer= {'We Do it'}
	}
}

DATA_PATH = vim.fn.stdpath('data')
CACHE_PATH = vim.fn.stdpath('cache')

