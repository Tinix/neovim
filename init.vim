set number
set mouse=a
" set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set laststatus=2
" set noshowmode
set smarttab
set shiftwidth=2
set relativenumber

call plug#begin('~/.local/share/nvim/plugged')
" Ide
Plug 'easymotion/vim-easymotion'

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"NERDTree
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToogle'}

" Gruvbox Theme
Plug 'morhetz/gruvbox'

Plug 'christoomey/vim-tmux-navigator'
" Emmet
Plug 'mattn/emmet-vim'
" configurable statusline
Plug 'itchyny/lightline.vim'
" Ruby
Plug 'vim-ruby/vim-ruby'
" Rails
Plug 'tpope/vim-rails'
" javascript
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'airblade/vim-gitgutter'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'ryanoasis/nerd-fonts' " font to nerdatree
" The React syntax highlighting and indenting plugin for vim. Also supports the typescript tsx file.
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
" Closetag
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-fugitive'
Plug 'gruvbox-community/gruvbox'

" Vim for Rails
Plug 'tpope/vim-rails'

" Colorize
Plug 'norcalli/nvim-colorizer.lua'
" load this =>  :lua require'colorizer'.setup()

" Plug about RSpec
Plug 'skwp/vim-rspec'
" :RunSpec for current file
" :RunSpecLine for current line (current 'it' block)
" :RunSpecs for all files in spec dir

" Complete to import 
Plug 'billyvg/node-host', { 'do': 'npm install' }

" REACT snippets
Plug 'mlaursen/vim-react-snippets'

" Float Terminal in nvim
Plug 'voldikss/vim-floaterm'

" Multiple cursores
Plug 'terryma/vim-multiple-cursors'


call plug#end()

"NERDTree position right
" let g:NERDTreeWinPos="right"
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum]"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum]"
endif

let g:gruvbox_invert_selection='0'
set background=dark

let NERDTreeClose=1 " cuando se abre el file se esconde NERDTree
let NERDTreeQuitOnOpen=0 " cuando se abre el file NERDTree permanece abierto
" utilizar la tecla para easy motion SPC
let mapleader=" "
let g:NERDTreeGitStatusWithFlags = 1
command! -nargs=1 Prettier :CocCommand prettier.formatFile

nmap <Leader>s <Plug>(easymotion-s2)

" Close NERDTree
nmap <Leader>ft :NERDTreeClose<CR>

" Open NERDTree
nmap <Leader>nt :NERDTreeFind<CR>

" save file with this config
nmap <Leader>w :w<CR>
" exit nvim whitout save 
nmap <Leader>q :q<CR>
" Refresh navbar nerdtree
nmap <Leader>r :NERDTreeFocus<CR>

" -- Autocompletation
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTag " autocomplete html

" coc configuration
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint',
  \ 'coc-prettier',
  \ 'coc-json',
  \]

" devicons enable
let g:webdevicons_enable_ctrlp = 1
let g:NERDTreeIgnore = ['^node_modules$']

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] 

function! ShowDocIfNoDiagnostic(timer_id)
  if (coc#util#has_float() == 0)
    silent call CocActionAsync('doHover')
  endif
endfunction

function! s:show_hover_doc()
  call timer_start(500, 'ShowDocIfNoDiagnostic')
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

let g:vim_jsx_pretty_colorful_config = 1 " default 0


" move  single lines 
nmap <C-k> [e
nmap <C-j> ]e
" move multiple lines selected
vmap <C-k> [egv
vmap <C-j> ]egv

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" ****************************************
" filenames like *.xml, *.html, *.xhtml, ...
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }


" Close Tag all bracket 
let g:closetag_shortcut = '>'
let g:closetag_filenames = "*.html.erb, *.html, *.xhtml, *.phtml"
let g:closetag_close_shortcut = '<leader>>'

" Git command
nmap <Leader>gh :diffget //3<CR>
nmap <Leader>gu :diffget //2<CR>
nmap <Leader>gs :G<CR>

" Neoclide coc.nvim 
nmap <Leader>rr <Plug>(coc-rename)
nnoremap <Leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

" Emmet enable " Ctrl + y + , enable the completacion , don't forgot Tinix!
let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.

"Enable just for html/css
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key='<A-c>'  " Alt + c
autocmd FileType html,css EmmetInstall

" import React, Angular, Vue... etc 
let g:jsimport#reporting = 1

"Float terminal on Nvim config
let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F12>'



" Default mapping
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
" End multiple Cursor


