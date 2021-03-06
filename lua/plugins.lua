local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
    execute("!git clone https://github.com/wbthomason/packer.nvim " .. install_path)
    execute "packadd packer.nvim"
end

--- Check if a file or directory exists in this path
local function require_plugin(plugin)
    local plugin_prefix = fn.stdpath("data") .. "/site/pack/packer/opt/"

    local plugin_path = plugin_prefix .. plugin .. "/"
    --	print('test '..plugin_path)
    local ok, err, code = os.rename(plugin_path, plugin_path)
    if not ok then
        if code == 13 then
            -- Permission denied, but it exists
            return true
        end
    end
    --	print(ok, err, code)
    if ok then
        vim.cmd("packadd " .. plugin)
    end
    return ok, err, code
end

vim.cmd "autocmd BufWritePost plugins.lua PackerCompile" -- Auto compile when there are changes in plugins.lua

return require("packer").startup(
    function(use)
        -- Packer can manage itself as an optional plugin
        use "wbthomason/packer.nvim"


        use {"kdav5758/TrueZen.nvim", otp= true}
        use {"ahmedkhalf/lsp-rooter.nvim", opt = true}
        use {'tpope/vim-fugitive', opt = true}
        use {'ayu-theme/ayu-vim', opt = true}
        use {'wfxr/minimap.vim', opt = true}
        use {'Yggdroot/indentLine', opt = true}
        use {'folke/lsp-colors.nvim', opt = true}
        use {'prettier/vim-prettier', opt = true}
        use {'sbdchd/neoformat', opt = true}
        use {"folke/todo-comments.nvim", opt = true}
        use {'kdheepak/lazygit.nvim', opt = true}
        use {'RRethy/vim-illuminate', opt = true}

        -- Flutter 
        use {"voldikss/vim-floaterm", opt = true}
        use {'akinsho/flutter-tools.nvim', opt = true}

        use {'RishabhRD/popfix', otp = true}
        use {'RishabhRD/nvim-lsputils', otp = true}

        -- TODO refactor all of this (for now it works, but yes I know it could be wrapped in a simpler function)
        use {"neovim/nvim-lspconfig", opt = true}
        use {"glepnir/lspsaga.nvim", opt = true}
        use {"kabouzeid/nvim-lspinstall", opt = true}

        -- Telescope
        use {"nvim-lua/popup.nvim", opt = true}
        use {"nvim-lua/plenary.nvim", opt = true}
        use {"nvim-telescope/telescope.nvim", opt = true}
        use {"nvim-telescope/telescope-fzy-native.nvim", opt = true}

        -- Debugging
        use {"mfussenegger/nvim-dap", opt = true}

        -- Autocomplete
        use {"hrsh7th/nvim-compe", opt = true}
        use {"hrsh7th/vim-vsnip", opt = true}
        use {"rafamadriz/friendly-snippets", opt = true}

        -- Treesitter
        use {"nvim-treesitter/nvim-treesitter"}
        use {"windwp/nvim-ts-autotag", opt = true}

        -- Explorer
        use {"kyazdani42/nvim-tree.lua", opt = true}

        -- use {'lukas-reineke/indent-blankline.nvim', opt=true, branch = 'lua'}
        use {"lewis6991/gitsigns.nvim", opt = true}
        -- use {"liuchengxu/vim-which-key", opt = true}
        use {"folke/which-key.nvim", opt = true}
        use {"ChristianChiarulli/dashboard-nvim", opt = true}
        use {"windwp/nvim-autopairs", opt = true}
        use {"terrortylor/nvim-comment", opt = true}
        use {"kevinhwang91/nvim-bqf", opt = true}

        -- Colorschemes 
        use {"christianchiarulli/nvcode-color-schemes.vim", opt = true}
        use {'wojciechkepka/bogster', opt = true}
        use {'lewis6991/moonlight.vim', otp = true}
        use {'morhetz/gruvbox', opt = true}

        -- Icons
        use {"kyazdani42/nvim-web-devicons", opt = true}

        -- Status Line and Bufferline
        use {"glepnir/galaxyline.nvim", opt = true}
        use {"romgrk/barbar.nvim", opt = true}



        require_plugin('TrueZen.nvim');
        require_plugin('lsp-rooter.nvim');
        require_plugin('vim-fugitive');
        require_plugin('gruvbox')
        require_plugin('minimap.vim')
        require_plugin('moonlight.vim')
        require_plugin('indentLine');
        require_plugin('lsp-colors.nvim')
        require_plugin('bogster')
        require_plugin('vim-prettier')
        require_plugin('neoformat')
        require_plugin('todo-comments.nvim')
        require_plugin('lazygit.nvim')
        require_plugin('vim-illuminate')
        require_plugin("popfix")
        require_plugin("nvim-lsputils")
        require_plugin("flutter-tools.nvim")
        require_plugin("vim-floaterm")
        require_plugin("nvim-lspconfig")
        require_plugin("lspsaga.nvim")
        require_plugin("nvim-lspinstall")
        require_plugin("friendly-snippets")
        require_plugin("popup.nvim")
        require_plugin("plenary.nvim")
        require_plugin("telescope.nvim")
        require_plugin("nvim-dap")
        require_plugin("nvim-compe")
        require_plugin("vim-vsnip")
        require_plugin("nvim-treesitter")
        require_plugin("nvim-ts-autotag")
        require_plugin("nvim-tree.lua")
        require_plugin("gitsigns.nvim")
        require_plugin("which-key.nvim")
        require_plugin("dashboard-nvim")
        require_plugin("nvim-autopairs")
        require_plugin("nvim-comment")
        require_plugin("nvim-bqf")
        require_plugin("nvcode-color-schemes.vim")
        require_plugin("nvim-web-devicons")
        require_plugin("galaxyline.nvim")
        require_plugin("barbar.nvim")
    end
)
