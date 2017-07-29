syntax on
set autoindent
"set smartindent
set nocp
filetype plugin on
au BufRead,BufNewFile *.rs set filetype=rust
au BufRead,BufNewFile *.cr set filetype=ruby
au BufRead,BufNewFile *.slim set filetype=slim
set tabstop=4
set shiftwidth=4
set expandtab
set number
set showcmd
set laststatus=2
set statusline=%F%m%r%h%w\ [Format=%{&ff}]\ [type=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [Pos=%04l,%04v][%p%%]\ [Len=%L]
set vb t_vb = "" 
map <F10> <Esc>:qa!<CR>
map <F2> <Esc>:tabnew<CR>
map <F3> <Esc>:tabp<CR>
map <F4> <Esc>:tabn<CR>  
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" A simple calculator
imap <silent> <C-C> <C-R>=string(eval(input("Calculate: ")))<CR>

" Set the highlight for searching
set hlsearch
"ron
"murphy
"darkblue
colorscheme delek
" configure tags - add additional tags here or comment out not-used ones
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/qt4
"set tags+=~/.vim/tags/boost
set tags+=~/.vim/tags/poco
" build tags of your own project with Ctrl-F12
map <C-F12> :!ctags -R --sort=yes --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 0
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
let g:rubycomplete_rails = 1
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
let g:C_MapLeader = ','
set autochdir
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
set completeopt=longest,menuone
inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window.
  set lines=70 columns=100
endif
let g:clang_complete_auto = 0
let g:clang_complete_copen = 1
let g:clang_hl_errors = 1
"let g:clang_periodic_quickfix = 1
" evil
"noremap  <Up> ""
" noremap! <Up> <Esc>
" noremap  <Down> ""
" noremap! <Down> <Esc>
" noremap  <Left> ""
" noremap! <Left> <Esc>
" noremap  <Right> ""
" noremap! <Right> <Esc>
