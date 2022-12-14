## nvim and lua setting 
- project structure 
- basic lau to configure nvim 
- telescope and telescope filer browser 
- nerd-font
- lsp and langugae server 
- tmux to fix the true color issue 
- fish shell and configuration 


## project structure 
.config/nvim 
```
- init.lua 
- after/plugin 
  |--prettier.rc.lua
  |--telescope.rc.lua
  |--web-devicons.rc.lua
- plugin
  |--packer-compiled.lua
  |--null-ls.rc.lua
  |--lspconfig.lua
  |--lspsaga.lua
- lua
  |--entest
     |--base.lua
     |--maps.lua
     |--highlight.lua
     |--macos.lua
     |--plugins.lua
```
according to the nvim documentation, all dirs in the runtimepath will be searcherd for for the plugin [here](https://neovim.io/doc/user/starting.html#load-plugins).


## basic lua to configure nvim 
```
vim.cmd("autocmd!")

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

-- Leader key 
vim.g.mapleader = ','

vim.wo.number = true
vim.opt.title = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.hlsearch = true
vim.opt.backup = false
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
vim.opt.shell = 'fish'
vim.opt.backupskip = { '/tmp/*', '/private/tmp/*' }
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.wrap = false -- No Wrap lines
vim.opt.backspace = { 'start', 'eol', 'indent' }
vim.opt.path:append { '**' } -- Finding files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }

-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- Add asterisks in block comments
vim.opt.formatoptions:append { 'r' }
```


## telescope and telescope file browser
dependencies, might need to brew install for macos
- [sharkd/fd](https://github.com/sharkdp/fd) for greph filder 
- [nvim-treesister](https://github.com/nvim-treesitter/nvim-treesitter)

basic setup and mappings [here](https://github.com/nvim-telescope/telescope.nvim)

telescope file browser
- seletection by tab 
- rename, move, copy [here](https://github.com/nvim-telescope/telescope-file-browser.nvim)

## nerd-font
brew install or manually install and then terminal (Iterm) setting to select hack nerd font. the font help display icons such as git

## tmux 
tmux can be used to fix the non-true-color terminal issue 

## fish shell and basic configuration 
- run fish_config to select a font 
- the fish backgroud color does not work 
- customize fish_variables and fish_prompt.fish function 
```
# VERSION: 3.0
SETUVAR __fish_initialized:3400
SETUVAR fish_color_autosuggestion:666
SETUVAR fish_color_cancel:\x2d\x2dreverse
SETUVAR fish_color_command:normal
SETUVAR fish_color_comment:888\x1e\x2d\x2ditalics
SETUVAR fish_color_cwd:white
SETUVAR fish_color_cwd_root:A00
SETUVAR fish_color_end:009900
SETUVAR fish_color_error:F22
SETUVAR fish_color_escape:0AA
SETUVAR fish_color_history_current:0AA
SETUVAR fish_color_host:normal
SETUVAR fish_color_host_remote:\x1d
SETUVAR fish_color_keyword:\x1d
SETUVAR fish_color_match:0AA
SETUVAR fish_color_normal:B2B2B2
SETUVAR fish_color_operator:0AA
SETUVAR fish_color_option:\x1d
SETUVAR fish_color_param:ccccff
SETUVAR fish_color_quote:9ce781
SETUVAR fish_color_redirection:FFF
SETUVAR fish_color_search_match:\x2d\x2dbackground\x3d533
SETUVAR fish_color_selection:\x2d\x2dbackground\x3dB218B2
SETUVAR fish_color_status:red
SETUVAR fish_color_user:brgreen
SETUVAR fish_color_valid_path:\x2d\x2d
SETUVAR fish_key_bindings:fish_default_key_bindings
SETUVAR fish_pager_color_background:\x1d
SETUVAR fish_pager_color_completion:BBB
SETUVAR fish_pager_color_description:666
SETUVAR fish_pager_color_prefix:0AA\x1e\x2d\x2d
SETUVAR fish_pager_color_progress:0AA
SETUVAR fish_pager_color_secondary_background:\x1d
SETUVAR fish_pager_color_secondary_completion:\x1d
SETUVAR fish_pager_color_secondary_description:\x1d
SETUVAR fish_pager_color_secondary_prefix:\x1d
SETUVAR fish_pager_color_selected_background:\x2d\x2dbackground\x3d333
SETUVAR fish_pager_color_selected_completion:\x1d
SETUVAR fish_pager_color_selected_description:\x1d
SETUVAR fish_pager_color_selected_prefix:\x1d
```


## vscode setting 
show function documentation or show hover 
```bash
Cmd K Cmd I
```

## troubleshooting 
1. [clipboard](https://vim.fandom.com/wiki/Accessing_the_system_clipboard)
