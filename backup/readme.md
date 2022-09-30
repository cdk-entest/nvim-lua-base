---
title: Basic Vim
description: basic setup vim
author: haimtran
publishedDate: 30/09/2022
date: 30/09/2022
---

## Introduction

## Setup

basic setup

```vim
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set cindent
set autoindent
set smartindent
set mouse=a
set hlsearch
set showcmd
set title
set expandtab
set incsearch
set signcolumn=yes
```

stop auto adding prefix from previous line

```vim
autocmd BufEnter * set formatoptions-=cro
autocmd BufEnter * setlocal formatoptions-=cro
```

highlight syntax on

```vim
set re=0
syntax on
```

delays and poor user experience.

```vim
set updatetime=300
```

## Netrw

setup netrw size

```vim
let g:netrw_liststyle= 3
let g:netrw_winsize=30
```

explore

```vim
map <leader>sf : Lexplore<CR>
```

search files

```vim
search files
set nocompatible
set path+=**
set wildmenu
```

## Map

basic map

```vim
let mapleader = ","
imap jj <ESC>A
inoremap ii <ESC>
nnoremap sh <C-w>h
nnoremap sl <C-w>l
nnoremap sv <C-w>v
nnoremap ss <C-w>s
nnoremap sc <C-w>c
```

copy clipboard

```vim
vnoremap <leader>y "+y
```

## Plugins

use vimplug

```vim
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
Plug 'rakr/vim-one'
call plug#end()

```

## Theme

colorscheme and modification

```vim
let g:airline_theme='one'
colorscheme one
set background=dark
:highlight Normal ctermbg=236
:highlight clear LineNr
:highlight clear SignColumn
:highlight clear CursorLineNr
:highlight clear VertSplit
:highlight StatusLine cterm=reverse term=reverse ctermfg=59
```

paste from clipboard inside tmux

```vim
if &term =~ "screen"
  let &t_BE = "\e[?2004h"
  let &t_BD = "\e[?2004l"
  exec "set t_PS=\e[200~"
  exec "set t_PE=\e[201~"
endif
```

modify cursorline

```vim
cursorline
set number
hi CursorLineNr cterm=None
set cursorline
hi CursorLine cterm=None ctermbg=238 guibg=Grey40
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
set ttimeout
set ttimeoutlen=1
set ttyfast
```

## Coc-Vim

coc highlight

```vim
:highlight CocHighlightText  ctermfg='white'
:highlight CocFloating ctermbg='white' ctermfg='black'
:highlight CocMenuSel ctermbg=7
:highlight Visual ctermbg=59
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.5, 'yoffset': 1}}

```

coc install language server

```bash
:CocInstall coc-python
```

configure fix on save prettier

```bash
:CocConfig
```

and add to the coc-setting.json

```json
{
  "coc.preferences.formatOnSaveFiletypes": [
    "css",
    "markdown",
    "typescript",
    "javascript",
    "json",
    "python"
  ]
}
```
