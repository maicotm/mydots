" Enable tabline
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ''
    let g:airline#extensions#tabline#left_alt_sep = ''
    let g:airline#extensions#tabline#right_sep = ''
    let g:airline#extensions#tabline#right_alt_sep = ''
    let g:airline_detect_modified=1
    let g:airline_disable_statusline = 0

" Airline layout
    let g:airline#extensions#default#layout = [
        \ [ 'a', 'b', 'c' ],
        \ [ 'x', 'y', 'z' ]
        \ ]

" Enable powerline fonts
    let g:airline_powerline_fonts = 1

" Powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''

" Airline current theme
    let g:airline_theme = 'gruvbox'

" Always show tabs
set showtabline=2
