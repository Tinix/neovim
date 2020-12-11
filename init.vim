
" vim:et sw=2 ts=2 fdm=marker
" Author: Daniel Tinivella <dtinivella@gmail.com>
" GitHub: https://github.com/tinix

" Basic setting: {{{
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
"set relativenumber
"ctags
set tags=./tags;/
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
"" Tabs. May be overridden by autocmd rules
set tabstop=2
set softtabstop=0
set shiftwidth=2
set expandtab
set laststatus=2
"" Use modeline overrides
set modeline
set modelines=10
set title
set titleold="Terminal"
set titlestring=%F
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

"}}}

" Plugin: {{{
call plug#begin('~/.local/share/nvim/plugged')
" Ide
Plug 'easymotion/vim-easymotion'

" Completion
Plug 'neoclide/coc.nvim', { 'branch': 'master', 'do': 'yarn install --frozen-lockfile' }
" Inspect
Plug 'puremourning/vimspector'

"NERDTree
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToogle'}

"Themes 
Plug 'https://github.com/gruvbox-community/gruvbox.git'
Plug 'phanviet/vim-monokai-pro' 
Plug 'sickill/vim-monokai'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'franbach/miramare' 
Plug 'jcherven/jummidark.vim'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryuta69/elly.vim' "https://github.com/ulwlu/elly.vim

" Tmux
Plug 'christoomey/vim-tmux-navigator'

" Emmet
Plug 'mattn/emmet-vim'
" configurable statusline
Plug 'itchyny/lightline.vim'

" Ruby:
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'tpope/vim-projectionist'
Plug 'thoughtbot/vim-rspec'
Plug 'ecomba/vim-ruby-refactoring', {'tag': 'main'}
" Plug about RSpec
Plug 'skwp/vim-rspec'
" :RunSpec for current file
" :RunSpecLine for current line (current 'it' block)
" :RunSpecs for all files in spec dir
Plug 'ecomba/vim-ruby-refactoring'

" Javascript
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'

" TypeScript
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'


" React
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mlaursen/vim-react-snippets'

Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'
Plug 'airblade/vim-gitgutter'
Plug 'itchyny/lightline.vim'
Plug 'mengelbrecht/lightline-bufferline'

" Git 
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Others
Plug 'brglng/vim-im-select', {'on': 'ImSelectEnable'}

Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
Plug 'scrooloose/nerdcommenter'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax
Plug 'ryanoasis/nerd-fonts' " font to nerdatree

Plug 'HerringtonDarkholme/yats.vim'
" or Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" Closetag
Plug 'alvan/vim-closetag'
Plug 'gruvbox-community/gruvbox'

" Colorize:
Plug 'norcalli/nvim-colorizer.lua'
" load this =>  :lua require'colorizer'.setup()

" Complete to import 
Plug 'billyvg/node-host', { 'do': 'npm install' }

" Float Terminal in nvim
Plug 'voldikss/vim-floaterm'

" Multiple cursores
Plug 'terryma/vim-multiple-cursors'

Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }


" Elixir :CocInstall coc-elixir
Plug 'elixir-editors/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'elixir-lsp/coc-elixir', {'do': 'yarn install && yarn prepack'}
" :Mixformat
Plug 'mhinz/vim-mix-format'
let g:mix_format_on_save = 1

" Vim-markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Dockerfile-Docker-compose
Plug 'ekalinin/Dockerfile.vim'

" LoremIpsum 
"Plug 'loremipsum'

" Track the engine.
Plug 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.

" Skylight
Plug 'voldikss/vim-skylight'

call plug#end()
" }}}


"NERDTree position right
" let g:NERDTreeWinPos="right"

" Colorscheme: {{{
colorscheme gruvbox
"}}}


"call github_colors#togglebg_map('<f5>') 

" change theme github
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum]"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum]"
endif

" Gruvbox configuration: {{{
"let g:gruvbox_invert_selection='0'
"let g:airline_powerline_fonts = 1
let g:airline_theme='https://github.com/vim-airline/vim-airline-themes'
:set background=dark
"let g:gruvbox_contrast_dark = 'hard'
"let g:gruvbox_termcolors = 256
"}}}
"

let NERDTreeClose=1 " cuando se abre el file se esconde NERDTree
let NERDTreeQuitOnOpen=0 " cuando se abre el file NERDTree permanece abierto

let g:NERDTreeGitStatusWithFlags = 1
let NERDTreeShowHidden=1
let g:NERDTreeIgnore = ['^node_modules$']
" let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard'] 

command! -nargs=1 Prettier :CocCommand prettier.formatFile

" use spc + nt
let mapleader=" "

" Easymotion
nmap <Leader>s <Plug>(easymotion-s2)
" NERDTree
nmap <Leader>ft :NERDTreeClose<CR>
nmap <Leader>nt :NERDTreeFind<CR>

" Save
nmap <Leader>w :w<CR>
" Whitout save 
nmap <Leader>q :q<CR>
" Refresh navbar nerdtree
nmap <Leader>r :NERDTreeFocus<CR>

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" move  single lines 
nmap <C-k> [e
nmap <C-j> ]e
" move multiple lines selected
vmap <C-k> [egv
vmap <C-j> ]egv

" Git command
nmap <Leader>gh :diffget //3<CR>
nmap <Leader>gu :diffget //2<CR>
nmap <Leader>gs :G<CR>

" Neoclide coc.nvim 
nmap <Leader>rr <Plug>(coc-rename)
nnoremap <Leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

" Install ctags # sudo pacman -S ctags universal-ctags
"run inside the project $ctags -R * 
" map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" Alt-right/left to navigate forward/backward in the tags stack
map <M-Left> <C-T>
map <M-Right> <C-]>

" diagnostic
nnoremap <leader>kp :let @*=expand("%")<CR>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

map <Leader>h :tabprevious<cr>
map <Leader>l :tabnext<cr>
map <Leader>tab :tabfind<cr>

"bufferes
map <Leader>ob :Buffers<cr>

"Git
nnoremap <Leader>G :G<cr>
nnoremap <Leader>gp :Gpush
nnoremap <Leader>gl ::Gpull

" SkylightPreview & SkylightJumpTo
nnoremap <silent>go :SkylightJumpTo<CR>
nnoremap <silent>gp :SkylightPreview<CR>


" Use <c-space> to trigger completation.
if &filetype== "python" || &filetype == "javascript" || &filetype == "ruby" || &filetype == "elixir"
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif


" Opern terminal
set splitright
function! OpenTerminal()
  " mvoe to right most buffer
  execute "normal  \<C-l>"
  execute "normal  \<C-l>"
  execute "normal  \<C-l>"
  execute "normal  \<C-l>"
  execute "normal  \<C-l>"

  let bufNum = bufNum("%")
endfunction


" -- Autocompletation
filetype plugin on
set omnifunc=syntaxcomplete#Complete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTag " autocomplete html

" Coc extensions: {{{
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-bookmark',
  \ 'coc-browser',
  \ 'coc-clock',
  \ 'coc-cmake',
  \ 'coc-css',
  \ 'coc-diagnostic',
  \ 'coc-dictionary',
  \ 'coc-ecdict',
  \ 'coc-emmet',
  \ 'coc-emoji',
  \ 'coc-eslint',
  \ 'coc-explorer',
  \ 'coc-floaterm',
  \ 'coc-git',
  \ 'coc-highlight',
  \ 'coc-html',
  \ 'coc-java',
  \ 'coc-json',
  \ 'coc-leetcode',
  \ 'coc-lists',
  \ 'coc-marketplace',
  \ 'coc-pairs',
  \ 'coc-post',
  \ 'coc-prettier',
  \ 'coc-python',
  \ 'coc-rust-analyzer',
  \ 'coc-syntax',
  \ 'coc-tag',
  \ 'coc-tasks',
  \ 'coc-template',
  \ 'coc-todolist',
  \ 'coc-translator',
  \ 'coc-tslint-plugin',
  \ 'coc-tsserver',
  \ 'coc-vimlsp',
  \ 'coc-vimtex',
  \ 'coc-word',
  \ 'coc-yank'
  \]
" }}}

" Devicons enable
let g:webdevicons_enable_ctrlp = 1
let g:vim_jsx_pretty_colorful_config = 1 " default 0

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


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Filenames like *.xml, *.html, *.xhtml, ...
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

" Multiple Cursor Default Mapping
let g:multi_cursor_use_default_mapping=0

let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

let b:coc_root_patterns = ['mix.exs']

 " Config NetrwSettings is like NERDTree" 
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20


" vim-airline
let g:airline_theme = 'powerlineish'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1

if exists('$SHELL')
    set shell=$SHELL
else
    set shell=/bin/zsh
endif

au TermEnter * setlocal scrolloff=0
au TermLeave * setlocal scrolloff=3


" vim-airline
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

if !exists('g:airline_powerline_fonts')
  let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  let g:airline_left_sep          = '▶'
  let g:airline_left_alt_sep      = '»'
  let g:airline_right_sep         = '◀'
  let g:airline_right_alt_sep     = '«'
  let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
  let g:airline#extensions#readonly#symbol   = '⊘'
  let g:airline#extensions#linecolumn#prefix = '¶'
  let g:airline#extensions#paste#symbol      = 'ρ'
  let g:airline_symbols.linenr    = '␊'
  let g:airline_symbols.branch    = '⎇'
  let g:airline_symbols.paste     = 'ρ'
  let g:airline_symbols.paste     = 'Þ'
  let g:airline_symbols.paste     = '∥'
  let g:airline_symbols.whitespace = 'Ξ'
else
  let g:airline#extensions#tabline#left_sep = ''
  let g:airline#extensions#tabline#left_alt_sep = ''

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = ''
endif



" coc: {{{ disable coc to enable kite
autocmd FileType ruby let b:coc_suggest_disable=1
autocmd FileType bash let b:coc_suggest_disable=1
autocmd FileType elixir let b:coc_suggest_disable=1
autocmd FileType css let b:coc_suggest_disable=1
autocmd FileType javascript let b:coc_suggest_disable=1
autocmd FileType typescript let b:coc_suggest_disable=1
autocmd FileType scss setl iskeyword+=@-@
" }}}


" lightline config: {{{
"
let g:kite_supported_languajes = ['ruby', 'javascript', 'elixir', 'python', 'html', 'bash', 'typescript', 'go', 'css']

" itchyny/lightline.vim
let g:lightline = {
  \ 'colorscheme': 'gruvbox',
  \ 'active': {
    \ 'left': [
      \ ['mode', 'paste'],
      \ ['fugitive', 'readonly', 'filename'],
      \ ['relativepath', 'modified']
    \ ],
    \ 'right': [
      \ ['asyncrun_status'],
      \ ['lineinfo'],
      \ ['gitbranch'],
      \ ['kitestatus'],
      \ ['percent'],
      \ ['cocstatus', 'fileformat', 'fileencoding'],
      \ ['filetype'],
      \ ['codelf_status'],
      \ ['translator_status'],
    \ ]
  \ },
  \ 'component': {
    \ 'lineinfo': ' %4l,%-3v',
    \ 'codelf_status': '%{exists("g:codelf_status") ? g:codelf_status : ""}',
    \ 'translator_status': '%{exists("g:translator_status") ? g:translator_status : ""}',
    \ 'asyncrun_status': '%{exists("g:asyncrun_status") ? g:asyncrun_status : ""}',
    \ 'close': '%{has("nvim") ? " NeoVim " : " VIM "}',
    \ 'vim_logo': "tinix "
  \ },
  \ 'component_function': {
    \ 'mode': 'fn#lightline#Mode',
    \ 'fugitive': 'fn#lightline#GitBranch',
    \ 'cocstatus': 'coc#status',
    \ 'readonly': 'fn#lightline#ReadOnly',
    \ 'filename': 'fn#lightline#FileName',
    \ 'fileformat': 'fn#lightline#FileFormat',
    \ 'fileencoding': 'fn#lightline#FileEncoding',
    \ 'filetype': 'fn#lightline#FileType',
    \ 'absolutepath': 'fn#lightline#AbsPath'
  \ },
  \ 'tabline': {
    \ 'left': [['vim_logo', 'buffers']],
    \ 'right': [['close']],
    \ 'subseparator': {
      \ 'left': '│',
      \ 'right': '│'
    \ }
  \ },
  \ 'component_expand': { 'buffers': 'lightline#bufferline#buffers' },
  \ 'component_type': { 'buffers': 'tabsel' },
  \ 'subseparator': {
    \ 'left': '│',
    \ 'right': '│'
  \ }
\ }
"}}}

