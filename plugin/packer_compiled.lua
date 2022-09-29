-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

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

time([[Luarocks path setup]], true)
<<<<<<< HEAD
local package_path_str = "/Users/haimtran/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/haimtran/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/haimtran/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/haimtran/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/haimtran/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
=======
local package_path_str = "/home/ec2-user/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ec2-user/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ec2-user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ec2-user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ec2-user/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/LuaSnip",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/LuaSnip",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/cmp-buffer",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/cmp-buffer",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["colorbuddy.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/colorbuddy.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/tjdevries/colorbuddy.nvim"
  },
  ["git.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/git.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/git.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/dinhhuy258/git.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/lualine.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/lualine.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["markdown-preview.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/mason.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/mason.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neosolarized.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/neosolarized.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/neosolarized.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/svrana/neosolarized.nvim"
  },
  ["nightfox.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/nvim-cmp",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/nvim-cmp",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/packer.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/packer.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/plenary.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/plenary.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["prettier.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/prettier.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/prettier.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/MunifTanjim/prettier.nvim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/telescope.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/telescope.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
<<<<<<< HEAD
    path = "/Users/haimtran/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
=======
    path = "/home/ec2-user/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
>>>>>>> 04febaa91e04201750e4da5f8910c4f544fbfaaf
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
