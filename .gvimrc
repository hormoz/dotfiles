" Don't beep
set visualbell

" Relative Numbers
set relativenumber

" Start without the toolbar
set guioptions-=T

" MacVim: smooth fonts.
set antialias

" Don't show scrollbars
set guioptions-=r
set guioptions-=l

" Show 3 lines of context around the cursor
set scrolloff=3

" Turn on line wrapping
set wrap

colorscheme Kellys

" Automatic fold settings for specific files. Uncomment to use.
autocmd FileType ruby setlocal foldmethod=syntax
autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

filetype plugin indent on 

" NERDTree configuration
map ,n :NERDTreeToggle<CR>

"key map for tComment Plugin: Faster Commenting
map <leader>c <c-_><c-_>

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

" Map escape to ,m
imap jj <esc>

" Enable code folding
set foldenable

" http://vim.wikia.com/wiki/Make_Vim_completion_popup_menu_work_just_like_in_an_IDE
:set completeopt=longest,menuone
:inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

" Window dimensions.
set lines=25 columns=100
