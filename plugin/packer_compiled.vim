" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "C:\\Users\\d3fko\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\d3fko\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\d3fko\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\d3fko\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\d3fko\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["TrueZen.nvim"] = {
    loaded = true,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\TrueZen.nvim"
  },
  ["ayu-vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\ayu-vim"
  },
  ["barbar.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\barbar.nvim"
  },
  bogster = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\bogster"
  },
  ["dashboard-nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\dashboard-nvim"
  },
  ["flutter-tools.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\flutter-tools.nvim"
  },
  ["friendly-snippets"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\gitsigns.nvim"
  },
  gruvbox = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\gruvbox"
  },
  indentLine = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\indentLine"
  },
  ["lazygit.nvim"] = {
    loaded = false,
    needs_bufread = true,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lazygit.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lsp-colors.nvim"
  },
  ["lsp-rooter.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lsp-rooter.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\lspsaga.nvim"
  },
  ["minimap.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\minimap.vim"
  },
  ["moonlight.vim"] = {
    loaded = true,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\moonlight.vim"
  },
  neoformat = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\neoformat"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvcode-color-schemes.vim"
  },
  ["nvim-autopairs"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-autopairs"
  },
  ["nvim-bqf"] = {
    loaded = false,
    needs_bufread = true,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-bqf"
  },
  ["nvim-comment"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-comment"
  },
  ["nvim-compe"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-compe"
  },
  ["nvim-dap"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-dap"
  },
  ["nvim-lspconfig"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-lspinstall"
  },
  ["nvim-lsputils"] = {
    loaded = true,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lsputils"
  },
  ["nvim-tree.lua"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\plenary.nvim"
  },
  popfix = {
    loaded = true,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\popfix"
  },
  ["popup.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\popup.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\todo-comments.nvim"
  },
  ["vim-floaterm"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = false,
    needs_bufread = true,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-illuminate"
  },
  ["vim-prettier"] = {
    loaded = false,
    needs_bufread = true,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-prettier"
  },
  ["vim-vsnip"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\vim-vsnip"
  },
  ["which-key.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "C:\\Users\\d3fko\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\which-key.nvim"
  }
}

time("Defining packer_plugins", false)
if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
