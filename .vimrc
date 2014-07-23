" Make vim more useful
set nocompatible
filetype off    " Required for Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Let Vundle manage itself
Bundle 'gmarik/Vundle'

" My Bundles
Bundle 'rking/ag.vim'

Bundle 'kien/ctrlp.vim'
Bundle 'kien/rainbow_parentheses.vim'

" Bundle 'rizzatti/dash.vim'
" Bundle 'rizzatti/funcoo.vim'

Bundle 'mattn/emmet-vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'

Bundle 'kakkyz81/evervim'
Bundle 'chrisbra/histwin.vim'
Bundle 'Keithbsmiley/investigate.vim'
" Bundle 'Shutnik/jshint2.vim'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'msanders/snipmate.vim'
Bundle 'tomtom/tcomment_vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-fugitive'
Bundle 'editorconfig/editorconfig-vim'
Bundle 'edsono/vim-matchit'
Bundle 'opreaadrian/vim-github-colorscheme'
Bundle 'heavenshell/vim-jsdoc'
Plugin 'junegunn/vim-easy-align'

" Set syntax highlighting options.
if $TERM == 'xterm-256color'
    set t_Co=256
endif
set background=light
syntax  on
colorscheme Tomorrow
" Solarized color scheme options
let g:solarized_contrast="high" 
let g:solarized_visibility="low"
let g:solarized_underline=0
set guifont=Sauce\ Code\ Powerline:h16

" Always write pretty code
vmap <Enter> <Plug>(EasyAlign)

" JSDoc plugin
let g:jsdoc_default_mapping=0

" Change mapleader
let mapleader=","

" Local dirs
set backupdir=$HOME/.vim/backups
set undodir=$HOME/.vim/undo
set directory=$HOME/.vim/swaps
set noswapfile

let g:investigate_url_for_javascript="https://developer.mozilla.org/en-US/search?q=^s"
let g:investigate_url_for_html="https://developer.mozilla.org/en-US/search?q=^s"
let g:investigate_url_for_css="https://developer.mozilla.org/en-US/search?q=^s"
" Set some junk
set clipboard=unnamed
set autoindent " Copy indent from last line when starting new line.
set backspace=indent,eol,start
set cursorline " Highlight current line
set showmatch " Show matching parens
highlight CursorLine cterm=none
highlight CursorLineNr ctermbg=none ctermfg=196 gui=bold,underline cterm=bold,underline term=bold,underline
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set esckeys " Allow cursor keys in insert mode.
set expandtab " Expand tabs to spaces

" Smarter code indenting
    nmap <D-[> <<
    nmap <D-]> >>
    vmap <D-[> <gv
    vmap <D-]> >gv

" Set up JSDoc plugin
" let g:jsdoc_allow_input_prompt=1
" let g:jsdoc_additional_descriptions=1

" Folding settings(Credits to Lokaltog)
    set foldcolumn=0
    set foldenable
    set foldlevel=0
    set foldmethod=marker
    set foldtext=FoldText()

set t_ut=
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle.
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set history=1000 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches.
set incsearch " Highlight dynamically as pattern is typed.
set laststatus=2 " Always show status line
set lispwords+=defroutes " Compojure
set lispwords+=defpartial,defpage " Noir core
set lispwords+=defaction,deffilter,defview,defsection " Ciste core
set lispwords+=describe,it " Speclj TDD/BDD
set magic " Enable extended regexes.
set mouse=a " Enable moouse in all in all modes.
set noerrorbells " Disable error bells.
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command.
set nostartofline " Don't reset cursor to start of line when moving around.
set nowrap " Do not wrap lines.
set nu " Enable line numbers.
set ofu=syntaxcomplete#Complete " Set omni-completion method.
set report=0 " Show all changes.
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window.
set shiftwidth=2 " The # of spaces for indenting
set shortmess=atI " Don't show the intro message when starting vim.
set showmode " Show the current mode.
set showtabline=4 " Always show tab bar.
set sidescrolloff=3 " Start scrolling three columns before vertical border of window.
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set tabstop=4
set softtabstop=4 " Tab key results in 4 spaces
set splitbelow " New window goes below
set splitright " New windows goes right
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set title " Show the filename in the window titlebar.
set ttyfast " Send more characters at a given time.
set ttymouse=xterm " Set mouse type to xterm.
set undofile " Persistent Undo.
set vb " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line.
set wildmode=list:longest,full " Complete only until point of ambiguity.
set winminheight=0 "Allow splits to be reduced to a single line.
set wrapscan " Searches wrap around end of file
set ttimeoutlen=100 " Decrease timeout for faster insert with 'O'

" Status Line
" hi User1 guibg=#455354 guifg=#CC4329 ctermbg=238 ctermfg=196   gui=bold,underline cterm=bold,underline term=bold,underline
hi User2 guibg=#455354 guifg=#CC4329 ctermbg=238 ctermfg=196 gui=bold           cterm=bold           term=bold
set statusline=[%n]\ %1*%<%.99t%*\ %2*%h%w%m%r%*%y[%{&ff}→%{strlen(&fenc)?&fenc:'No\ Encoding'}]%=%-16(\ L%l,C%c\ %)%P
let g:Powerline_symbols = 'fancy'

" Speed up viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Faster split resizing (+,-)
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" Sudo write (,W)
noremap <leader>W :w !sudo tee %<CR>

" Remap :W to :w
" command W w

" Better mark jumping (line + col)
nnoremap ' `

" Hard to type things
imap >> →
imap << ←
imap ^^ ↑
imap VV ↓
imap aa λ

" Toggle show tabs and trailing spaces (,c)
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Clear last search (,qs)
map <silent> <leader>qs <Esc>:noh<CR>
" map <silent> <leader>qs <Esc>:let @/ = ""<CR>

" Vim on the iPad
if &term == "xterm-ipad"
  nnoremap <Tab> <Esc>
  vnoremap <Tab> <Esc>gV
  onoremap <Tab> <Esc>
  inoremap <Tab> <Esc>`^
  inoremap <Leader><Tab> <Tab>
endif

" Remap keys for auto-completion, disable arrow keys
" I still need these cuz im nub. so nub.
" inoremap <expr>  <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr>  <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
" inoremap <expr>  <Down>     pumvisible() ? "\<C-n>" : "\<NOP>"
" inoremap <expr>  <Up>       pumvisible() ? "\<C-p>" : "\<NOP>"
" inoremap <Left>  <NOP>
" inoremap <Right> <NOP>

" Paste toggle (,p)
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" Faster autocomplete
inoremap <C-space> <C-x><C-o>

" NERD Commenter
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let g:NERDCustomDelimiters = { 'racket': { 'left': ';', 'leftAlt': '#|', 'rightAlt': '|#' } }

" NERDTree config
nnoremap <leader>n :NERDTreeToggle<cr>
nnoremap <leader>f :NERDTreeClose<cr>:NERDTreeFind<cr>

" Buffer navigation (,,) (,]) (,[) (,ls)
map <Leader>, <C-^>
map <Leader>] :bnext<CR>
map <Leader>[ :bprev<CR>
map <Leader>ls :buffers<CR>

" Close Quickfix window (,qq)
map <leader>qq :close<CR>

" Yank from cursor to end of line
nnoremap Y y$

" Insert newline
map <leader><Enter> o<ESC>

" Search and replace word under cursor (,*)
nnoremap <leader>* :%s/\<<C-r><C-w>\>//<Left>  

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

" Save and restore folds
" :au BufWinLeave * mkview
" :au BufWinEnter * silent loadview

" Join lines and restore cursor location (J)
nnoremap J mjJ`j

" Toggle folds (<Space>)
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>

" Fix page up and down
map <PageUp> <C-U>
map <PageDown> <C-D>
imap <PageUp> <C-O><C-U>
imap <PageDown> <C-O><C-D>

" 'Save', but another way
" inoremap <leader>ss <esc>:w<cr>a
" nnoremap <leader>ss :w<cr>
" vnoremap <leader>ss <esc>:w<cr>

" Restore cursor position
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Set relative line numbers
set relativenumber " Use relative line numbers. Current line is still in status bar.
au BufReadPost,BufNewFile * set relativenumber

filetype plugin indent on

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" Jade
au BufRead,BufNewFile *.jade set ft=jade syntax=jade

" Common Ruby files
au BufRead,BufNewFile Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

" Nu
au BufNewFile,BufRead *.nu,*.nujson,Nukefile setf nu

" Coffee Folding
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" ZSH
au BufRead,BufNewFile .zsh_rc,.functions,.commonrc,.aliases set ft=zsh

" CtrlP
let g:ctrlp_map = '<c-f>'
let g:ctrlp_switch_buffer = 'Et' " If open, focus on file don't open it twice
let g:ctrlp_match_window_bottom = 1 " Show at top of window
let g:ctrlp_working_path_mode = 2 " Smart path mode
let g:ctrlp_mru_files = 1 " Enable Most Recently Used files feature
let g:ctrlp_jump_to_buffer = 2 " Jump to tab AND buffer if already open
let g:ctrlp_split_window = 1 " <CR> = New Tab
let g:ctrlp_max_height = 30 " Don't let CtrlP get too big
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Silver searcher settings
map <leader>a :Ag!<space>
map <leader>A :Ag! "<C-r>=expand('<cword>')<CR>"

" Clojure.vim
let g:vimclojure#ParenRainbow = 1 " Enable rainbow parens
let g:vimclojure#DynamicHighlighting = 1 " Dynamic highlighting
let g:vimclojure#FuzzyIndent = 1 " Names beginning in 'def' or 'with' to be indented as if they were included in the 'lispwords' option

" Rainbow Parenthesis
nnoremap <leader>rp :RainbowParenthesesToggle<CR>

" Source .vimrc files after editing
autocmd bufwritepost .vimrc source <afile>

" Auto save files when losing focus
" set autowriteall
" autocmd FocusLost * silent! :wa
" autocmd TabLeave * silent! :wa

" Filetype stuff

autocmd BufEnter *.ctp set filetype=php
autocmd BufEnter *.md set filetype=markdown
autocmd BufEnter *.less set filetype=css
autocmd BufEnter *.scss set filetype=css
autocmd BufEnter *.ds set filetype=javascript
autocmd BufEnter *.json set filetype=javascript
autocmd BufEnter *.isml set filetype=html
autocmd BufEnter *.mnw set filetype=html
autocmd BufEnter *.ejs set filetype=html

" JSHint stuff
" autocmd BufWritePost *.js JSHint

" so ~/.private
" set rtp+=$HOME/powerline/powerline/bindings/vim " Vim powerline s'il vous plait !
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

"Toggle autoclose.vim
nmap <Leader>xa <Plug>ToggleAutoCloseMappings
