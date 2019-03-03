set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'vim-airline/vim-airline'
	Plugin 'vim-airline/vim-airline-themes'
	Plugin 'terryma/vim-multiple-cursors'
	Plugin 'scrooloose/nerdtree'
	Plugin 'jiangmiao/auto-pairs'
	Plugin 'tpope/vim-surround'
	Plugin 'conornewton/vim-latex-preview'
	Plugin 'junegunn/goyo.vim'
call vundle#end()

" some basics:
	set nocompatible
	set number
	filetype off
	filetype plugin indent on

" nerd tree: 
	let NERDTreeShowHidden=1
	map <C-B> :NERDTreeToggle<CR>

" shortcutting split navigation:
	map <C-W><C-Y> :vertical resize -5<CR>
	map <C-W><C-U> :res -5<CR>
	map <C-W><C-I> :res +5<CR>
	map <C-W><C-O> :vertical resize +5<CR>

" navigating with guides:
	nnoremap <Space><Space> /(<>)<CR> hxxxxi

" latex:
	" preview:
		let g:latex_pdf_viewer="mupdf"
	" goyo:
		autocmd FileType tex Goyo
