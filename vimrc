
 
" set spell check"
set spell spelllang=en_us

" needed so that the snippets recognize .tex files
let g:tex_flavor='latex'

" for moving up and down in the same column
" set virtualedit=all

" set vertical line at column 80 
"set colorcolumn=80
"highlight ColorColumn ctermbg=233

" Better copy & paste
" " When you want to paste large blocks of code into vim, press F2 before you
" " paste. At the bottom you should see ``-- INSERT (paste) --``.
"
set pastetoggle=<F2>
set clipboard=unnamed
" set clipboard=unnamedplus
vnoremap <C-c> "+y
noremap <C-v> "+p



" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

" comment lines or blocks
vnoremap <silent> # :s/^/#/<cr>:noh<cr>
vnoremap <silent> @ :s/^#//<cr>:noh<cr>

" enable syntax highlighting
syntax enable

" show line numbers
set number

" set tabs to have 4 spaces
set ts=4

" indent when moving to the next line while writing code
set autoindent

" expand tabs into spaces
set expandtab

" when using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" show a visual line under the cursor's current line
set cursorline

" show the matching part of the pair for [] {} and ()
set showmatch

" enable all Python syntax highlighting features
let python_highlight_all = 1

" mouse click
" set mouse=a

" easier moving of code blocks
" " Try to go into visual mode (v), then select several lines of code here and
" " then press ``>`` several times.
vnoremap < <gv  " better indentation
vnoremap > >gv  " better indentation

" make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" disable backup and swap files
set nobackup
set nowritebackup
set noswapfile

" quick-save rebind command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" some sort of hack to make light-line appear...
" this hack likes to have a mysterious aura around it...
set laststatus=2

" get rid of the extraneous default vim mode
set noshowmode

" eliminate delay between INSERT and ESCAPE
set timeoutlen=1000 ttimeoutlen=1000

" light-line configuration
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"x":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '|', 'right': '|' }
      \ }

" syntastic 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']

" jedi-vim
let g:jedi#show_call_signatures = "2"
autocmd FileType python setlocal completeopt-=preview

" add honza/vim-snippets.git along vim-snipmate
"ActivateAddons vim-snippets snipmate

" set color scheme
colorscheme molokai

" set spell check"
set spell spelllang=en_us

" plug-in manger
execute pathogen#infect()







