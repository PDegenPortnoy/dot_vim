" Example Vim configuration.
" Copy or symlink to ~/.vimrc or ~/_vimrc.

set nocompatible                  " Must come first because it changes other options.

silent! call pathogen#runtime_append_all_bundles()

syntax enable                     " Turn on syntax highlighting.
filetype plugin indent on         " Turn on file type detection.

runtime macros/matchit.vim        " Load the matchit plugin.

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode you're in.

set backspace=indent,eol,start    " Intuitive backspacing.

set hidden                        " Handle multiple buffers better.

set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.

set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.

set number                        " Show line numbers.
set ruler                         " Show cursor position.
set relativenumber                " Show relative numbers

set incsearch                     " Highlight matches as you type.
set hlsearch                      " Highlight matches.

set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.

set title                         " Set the terminal's title

set visualbell                    " No beeping.

set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set directory=$HOME/.vim/tmp//,.,~/tmp,/var/tmp,/tmp  " Keep swap files in one location

" UNCOMMENT TO USE
set tabstop=2                    " Global tab width.
set shiftwidth=2                 " And again, related.
set expandtab                    " Use spaces instead of tabs

set laststatus=2                  " Show the status line all the time
" Useful status information at bottom of screen
" set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{fugitive#statusline()}%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Highlight the current line
set cursorline

" Set Window Sizing
set winwidth=120
" Winheight needs to be bigger than we want to set winminheight.  But
" if winheight is set to a large value before winminheight, winminheight
" set will fail
set winheight=8
set winminheight=8
set winheight=999

" Or use vividchalk
" colorscheme vividchalk

" Tab mappings.
map <leader>bt :tabnew<cr>
map <leader>be :tabedit
map <leader>bc :tabclose<cr>
map <leader>bo :tabonly<cr>
map <leader>bn :tabnext<cr>
map <leader>bp :tabprevious<cr>
map <leader>bf :tabfirst<cr>
map <leader>bl :tablast<cr>
map <leader>bm :tabmove

" Uncomment to use Jamis Buck's file opening plugin
" map <Leader>t :FuzzyFinderTextMate<cr>

" Controversial...swap colon and semicolon for easier commands
"nnoremap ; :
"nnoremap : ;

"vnoremap ; :
"vnoremap : ;

" autocmd!

" Automatic fold settings for specific files. Uncomment to use.
" autocmd FileType ruby setlocal foldmethod=syntax
" autocmd FileType css  setlocal foldmethod=indent shiftwidth=2 tabstop=2

" For the MakeGreen plugin and Ruby RSpec. Uncomment to use.
autocmd! BufNewFile,BufRead *_spec.rb compiler rspec

""""""""""""""""""""""""""""""""""""""""""

" Turn off markdown syntax
" autocmd! FileType mkd setlocal syn=off  
" autocmd! FileType mk  setlocal syn=off 

" Add a shortcut for ctags
let Tlist_WinWidth = 50
map <Leader>ct :Tlist<CR>
" Builds tags lib for current working directory
map <F8> :!/usr/bin/ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

" Show trailing whitepace and spaces before a tab:
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\t/
