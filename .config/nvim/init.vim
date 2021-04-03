set undofile
set undodir=$XDG_CONFIG_HOME/nvim/undo//
set backupdir=$XDG_CONFIG_HOME/nvim/backup//
set directory=$XDG_CONFIG_HOME/nvim/swap//

set clipboard+=unnamedplus
set noshowcmd

set number
set showmatch

set smartcase
set ignorecase

set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set smarttab
set nojoinspaces

set cursorline
set cc=79
" set mouse=a

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=$XDG_CACHE_HOME/dein/repos/github.com/Shougo/dein.vim
call dein#begin('$XDG_CACHE_HOME/dein')

" Let dein manage dein
call dein#add('$XDG_CACHE_HOME/dein/repos/github.com/Shougo/dein.vim')

" Styling
call dein#add('cespare/vim-toml')
call dein#add('arcticicestudio/nord-vim')

" Helpers
call dein#add('tpope/vim-commentary')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-unimpaired')

call dein#add('easymotion/vim-easymotion')

call dein#end()

if dein#check_install()
    call dein#install()
endif

" Check for removed plugins and remove them after restart
if len(dein#check_clean())
    echo "Removed plugins: " map(dein#check_clean(), "split(v:val, '/')[-1]")
    call dein#recache_runtimepath()
    call map(dein#check_clean(), "delete(v:val, 'rf')")
endif

" call plug#begin('$XDG_CACHE_HOME/plug/plugins')

" Styling
" Plug 'cespare/vim-toml'
" Plug 'arcticicestudio/nord-vim'

" Helpers
" Plug 'tpope/vim-commentary'
" Plug 'tpope/vim-surround'

" call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

let g:nord_uniform_status_lines = 1
let g:nord_cursor_line_number_background = 1

augroup nord-theme-overrides
  autocmd!
  autocmd ColorScheme nord highlight vimCommentTitle ctermfg=14 guifg=#8FBCBB
augroup END

colorscheme nord

" EasyMotion
let mapleader=" " " map leader to Space
set timeoutlen=1000 " Set timeout length to 500 ms

map <leader><leader>. <Plug>(easymotion-repeat)
map <leader><leader>f <Plug>(easymotion-overwin-f)
map <leader><leader>j <Plug>(easymotion-overwin-line)
map <leader><leader>k <Plug>(easymotion-overwin-line)
map <leader><leader>w <Plug>(easymotion-overwin-w)

if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

nmap <F1> :echo<CR>
imap <F1> <C-o>:echo<CR>
inoremap jk <Esc>
tnoremap jk <C-\><C-n>

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ.;ABCDEFGHIJKLMNOPQRSTUVWXYZ:/,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" Reload config on changes
if (!exists('*SourceConfig'))
  function SourceConfig() abort
    source $MYVIMRC
  endfunction
endif
autocmd! BufWritePost $MYVIMRC call SourceConfig()

