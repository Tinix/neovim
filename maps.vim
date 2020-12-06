let mapleader=" "

nmap <Leader>s <Plug>(easymotion-s2)

" NERDTree
nmap <Leader>ft :NERDTreeClose<CR>
nmap <Leader>ft :NERDTreeFind<CR>
nmap <Leader>r :NERDTreeFocus<CR>

" Save and write
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" Plug: {{{
map <Leader>p :File<CR>
" }}}

" ctags: {{{
" Install ctags # sudo pacman -S ctags universal-ctags
"run inside the project $ctags -R * 
" map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
" map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
" Alt-right/left to navigate forward/backward in the tags stack
map <M-Left> <C-T>
map <M-Right> <C-]>
" }}}
"

" Move  single lines 
nmap <C-k> [e
nmap <C-j> ]e
" Move multiple lines selected
vmap <C-k> [egv
vmap <C-j> ]egv

" Remap for rename current word
nmap <F2> <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Git command
nmap <Leader>gh :diffget //3<CR>
nmap <Leader>gu :diffget //2<CR>
nmap <Leader>gs :G<CR>

" Neoclide coc.nvim 
nmap <Leader>rr <Plug>(coc-rename)
nnoremap <Leader>prw :CocSearch <C-R>=expand("<cword>")<CR><CR>

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

" Use <c-space> to trigger completation.
if &filetype == "ruby" || &filetype == "javascript" 
  inoremap <c-space> <C-x><C-u>
else
  inoremap <silent><expr> <c-space> coc#refresh()
endif

