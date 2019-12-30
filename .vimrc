set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Utilities plugins
Plugin 'kien/ctrlp.vim' " fuzzy find files
Plugin 'scrooloose/nerdtree' " file drawer, open with :NERDTreeToggle
Plugin 'benmills/vimux' " integration between vim and tmux
Plugin 'tpope/vim-fugitive' " amazing git wrapper for vim
Plugin 'tpope/vim-commentary' " comment/uncomment lines with gcc or gc in visual mode
Plugin 'Raimondi/delimitMate' " automatic closing of quotes, parenthesis, brackets, etc.
Plugin 'tpope/vim-sleuth' " detect indent style (tabs vs. spaces)
Plugin 'AndrewRadev/splitjoin.vim' " single/multi line code handler: gS - split one line into multiple, gJ - combine multiple lines into one
Plugin 'ervandew/supertab' " Perform all your vim insert mode completions with Tab
Plugin 'Valloric/YouCompleteMe'

" Visual plugins
Plugin 'https://github.com/vim-scripts/ScrollColors' " Type :SCROLL to change the color theme
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""
" General Settings
""""""""""""""""""""""""""""""""""""""
set number " insert the number of line
set relativenumber " insert the relative numbers above or below of line
set ruler "Always show current position
set showcmd " display incomplete commands
set encoding=utf-8 
filetype plugin indent on " load file type plugins + indentation

"""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""
" set expandtab " Use spaces instead of tabs
" set smarttab " Be smart when using tabs ;)
" 1 tab == 4 spaces
" set shiftwidth=4
" set tabstop=4
" Linebreak on 500 characters
set lbr
set tw=500
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines
set showmatch " show matching braces
 
" Tab control
set noexpandtab " insert tabs rather than spaces for <Tab>
set smarttab " tab respects 'tabstop', 'shiftwidth', and 'softtabstop'
set tabstop=4 " the visible width of tabs
set softtabstop=4 " edit as if the tabs are 4 characters wide
set shiftwidth=4 " number of spaces to use for indent and unindent
set shiftround " round indent to a multiple of 'shiftwidth'
set completeopt+=longest
set cindent " stricter rules for C programs

""""""""""""""""""""""""""
" User Interface
""""""""""""""""""""""""""

" Searching
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

" Color Themes stuff
set t_Co=256 
syntax on
" colorscheme desert " alduin desert aciona as cores como padrao
colorscheme gruvbox " alduin desert aciona as cores como padrao
set laststatus=2 " Corrige airline
" let g:solarized_termcolors=256
let base16colorspace=256  " Access colors present in 256 colorspace
set cursorline " Da hightlight na linha que esta editando
" Airbar
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
"""""""""""""""""""
" Syntastic Config
"""""""""""""""""""
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

"""""""""""""""""""""""""""
" Gruvbox Config
"""""""""""""""""""""""""""

" let g:gruvbox_italic = '1'
let g:gruvbox_contrast_dark = 'medium'
let g:gruvbox_contrast_light = 'medium'


"""""""""""""""""""""""""""""
" Mapping keys
"""""""""""""""""""""""""""""
" General mappings/shortcuts for functionality
" Additional, plugin-specific mappings are located under
" the plugins section
" the default <Leader> key is back slash

" refresh source file
nmap <leader>r :source ~/.vimrc<cr>

" activate spell-checking alternatives
nmap <leader>s :set invspell spelllang=en<cr>

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" toggle cursor line
nnoremap <leader>l :set cursorline!<cr>

" toggle paste mode
set pastetoggle=<leader>z

" save file
nnoremap <leader>w :w<cr>

" quit file
nnoremap <leader>q :q<cr>

" Control + Direction to change panes
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable SuperTab with context
" let g:SuperTabContextDefaultCompletionType = "<c-n>"
let g:SuperTabDefaultCompletionType = "<c-n>"
" Enable YouCompleteMe for C/C++ auto completation stuff
let g:ycm_global_ycm_extra_conf = "~/.vim/ycm_extra_conf.py"

" close NERDTree after a file is opened
let g:NERDTreeQuitOnOpen=0
" show hidden files in NERDTree
let NERDTreeShowHidden=1
" remove some files by extension
" let NERDTreeIgnore = ['\.js.map$']
" Toggle NERDTree
nmap <silent> <leader>e :NERDTreeToggle<cr>
" expand to the path of the file in the current buffer
nmap <silent> <leader>y :NERDTreeFind<cr>

" Change color theme
nmap <silent> <leader>co :SCROLL<cr>
