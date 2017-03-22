"
" WebVim Configuration : global mapping
"
" author: Bertrand Chevrier <chevrier.bertrand@gmail.com>
"
nnoremap ; :

nmap <Leader>deb i<RIGHT>echo '<pre>';<CR>print_r();<CR>echo '</pre>';<CR>exit;<UP><UP><RIGHT><RIGHT><RIGHT>

nmap <Leader>f :%s/)$\n    {/) {/ge \| :%s/\/\*\*\n\ *\*\ \(@.*\)\n\ *\*\//\/\*\*\ \1\ \*\//ge \| :%s/}\n}/}\r\r}/ge<CR>

nmap <Leader>j / \*\/\nclass<CR>O* @author Jap Mul <jap@branchonline.nl><ESC>O*<ESC>:nohlsearch<CR>

" tab navigation like firefox
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>

" switch windows without manually having to set window mode
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

if &term =~ '^screen'
    " tmux will send xterm-style keys when its xterm-keys option is on
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif


" leader
let g:mapleader = ","
let g:localmapleader = "\\"

" move the current line below
nnoremap <leader>- ddp

" move the current line above
nnoremap <leader>_ ddkP

" switch tab
nnoremap <S-right> :tabn<CR>
nnoremap <S-left> :tabp<CR>

" insert mode uppercase the current word
"  <esc> : go to normal mode
"  v 	 : visual mode
"  iw 	 : select the current word
"  U 	 : uppercase selection
"  i 	 : back to insert mode
inoremap <c-u> <esc>viwUi

" remove last search highlight
"nnoremap <C-l> :nohlsearch<CR><C-l>
nmap <silent> <leader><space> :nohlsearch<CR>


" Wrap a word in double quotes
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Wrap a word in single quotes
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

" select inside parents
onoremap in( :<c-u>normal! f(vi(<cr>

" select inside braces
onoremap in{ :<c-u>normal! f{vi{<cr>

" select inside brackets
onoremap in[ :<c-u>normal! f[vi[<cr>

" Open MYVIMRC in a vsplit
nnoremap <leader>ev :split $MYVIMRC<cr>

" Source MYVIMRC
nnoremap <leader>sv :source $MYVIMRC<cr>


if g:hardcoreMode == 1

    " Leave insert mode (like <esc>) and disable <esc>
    inoremap jk <esc>
    inoremap <special> <esc> <nop>
    inoremap <esc>^[ <esc>^[

    " Disable arrow keys

    nnoremap <up> <nop>
    nnoremap <down> <nop>
    nnoremap <left> <nop>
    nnoremap <right> <nop>

    inoremap <up> <nop>
    inoremap <down> <nop>
    inoremap <left> <nop>
    inoremap <right> <nop>
endif


