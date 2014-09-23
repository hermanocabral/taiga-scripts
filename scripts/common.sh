#!/bin/bash

cat > ~/.vimrc <<EOF
set nocompatible

set bs=2
set ts=4
set tw=1000000000

set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
filetype indent off
filetype plugin on

syntax on

set autoindent
set showmatch
set showmode
set mousehide

set nowrapscan
set hlsearch
set incsearch

set fileencoding=utf8
set encoding=utf8
EOF

source ./scripts/common/colors.sh
source ./scripts/common/apt.sh
source ./scripts/common/gem.sh
source ./scripts/common/node.sh
