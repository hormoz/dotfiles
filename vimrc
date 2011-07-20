" Must come first because it changes other options.
set nocompatible

set number
set ruler
syntax on

" Font family and font size.
set guifont=Monaco:h11

" Display incomplete commands.
set showcmd

" Display the mode you're in.
set showmode

" Switch between buffers without saving
set hidden

" Enhanced command line completion
set wildmenu

" Complete files like a shell
set wildmode=list:longest

" Set the terminal's title
set title



" Set encoding
set encoding=utf-8

set tabstop=2
set shiftwidth=2
set expandtab

" For Coffee plugin
" call pathogen#runtime_append_all_bundles()

" Automatically change current directory to that of the file in the buffer
autocmd BufEnter * cd %:p:h

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Status bar
set laststatus=2
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" Directories for swp files
set backupdir=~/.vim/backup
set directory=~/.vim/backup

"Markdown to HTML  
nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr> 

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

set splitbelow

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Shortcut to fold tags with <leader> + ft
nnoremap <leader>ft Vatzf


