set runtimepath^=/.vim runtimepath+=~/.vim/after

let &packpath = &runtimepath

source ~/.vimrc


if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
		https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall
endif

"if empty(glob('~/.vim/autoload/plug.vim'))
"  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"endif

call plug#begin('~/.vim/plugged')

Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'

call plug#end()

colorscheme gruvbox
highlight normal guibg=none


highlight ColorColumn ctermbg=0 guibg=lightgrey


vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

