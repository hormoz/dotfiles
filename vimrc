" Must come first because it changes other options.
set nocompatible

set number
set relativenumber
set ruler
syntax on

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

" Turn on line wrapping
set wrap

" Set the terminal's title
set title

" Show 3 lines of context around the cursor
set scrolloff=3

" Set encoding
set encoding=utf-8

set tabstop=2
set shiftwidth=2
set expandtab

" For Coffee plugin
" call pathogen#runtime_append_all_bundles()

" Automatic fold settings for specific files. Uncomment to use.
autocmd FileType ruby setlocal foldmethod=syntax
autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" Automatically change current directory to that of the file in the buffer
autocmd BufEnter * cd %:p:h

filetype plugin indent on 

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

" NERDTree configuration
map ,n :NERDTreeToggle<CR>

"key map for tComment Plugin: Faster Commenting
map <leader>c <c-_><c-_>

"Markdown to HTML  
nmap <leader>md :%!/usr/local/bin/Markdown.pl --html4tags <cr> 

nmap <space> :

"moving between tabs firefox style
nmap <C-S-]> gt
nmap <C-S-[> gT
nmap <C-1> 1gt
nmap <C-2> 2gt
nmap <C-3> 3gt
nmap <C-4> 4gt
nmap <C-5> 5gt
nmap <C-6> 6gt
nmap <C-7> 7gt
nmap <C-8> 8gt
nmap <C-9> 9gt
nmap <C-0> :tablast<CR>

" Thorfile, Rakefile, Vagrantfile and Gemfile are Ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

set splitbelow

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

" Map escape to ,m
imap ,m <esc>

" Enable code folding
set foldenable

" Shortcut to fold tags with <leader> + ft
nnoremap <leader>ft Vatzf

" http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
:set completeopt=longest,menuone
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
