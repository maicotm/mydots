" Use alt + hjkl to resize windows
    nnoremap <M-j>    :resize -2<CR>
    nnoremap <M-k>    :resize +2<CR>
    nnoremap <M-h>    :vertical resize +2<CR>
    nnoremap <M-l>    :vertical resize -2<CR>

" Redraw the screen and clear any search terms
    noremap <silent> <c-n> :nohls<cr><c-l>

" Better window navigation
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

" Use
    inoremap jk <Esc>
    inoremap kj <Esc>

" Better indenting
    vnoremap < <gv
    vnoremap > >gv

" TAB in general mode will move to text buffer
    nnoremap <silent> <TAB> :bnext<CR>

" SHIFT-TAB will go back
    nnoremap <silent> <S-TAB> :bprevious<CR>

" Perform dot commands over visual blocks:
    vnoremap . :normal .<CR>

" Replace all is aliased to S.
    nnoremap S :%s//g<Left><Left>

" Open terminal
    nnoremap <Leader>tv :vsp<CR>:terminal<CR>i
    nnoremap <Leader>th :sp<CR>10<C-w>_:terminal<CR>i

" Open corresponding .pdf/.html or preview
    map <leader>p :!opout <c-r>%<CR><CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
    autocmd VimLeave *.tex !texclear %

" Automatically deletes all trailing whitespace and newlines at end of file on save.
    autocmd BufWritePre * %s/\s\+$//e
    autocmd BufWritepre * %s/\n\+\%$//e
    autocmd BufWritePre *.[ch] %s/\%$/\r/e

" Save file as sudo on files that require root permission
    cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Terminal window navigation
    tnoremap <C-h> <C-\><C-N><C-w>h
    tnoremap <C-j> <C-\><C-N><C-w>j
    tnoremap <C-k> <C-\><C-N><C-w>k
    tnoremap <C-l> <C-\><C-N><C-w>l
    inoremap <C-h> <C-\><C-N><C-w>h
    inoremap <C-j> <C-\><C-N><C-w>j
    inoremap <C-k> <C-\><C-N><C-w>k
    inoremap <C-l> <C-\><C-N><C-w>l
    tnoremap <Esc> <C-\><C-n>

" Turns off highlighting on the bits of code that are changed, so the line that is changed is highlighted but the actual text that has changed stands out on the line and is readable.
    if &diff
        highlight! link DiffText MatchParen
    endif
