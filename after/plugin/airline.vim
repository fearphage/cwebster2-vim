let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#coc#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#denite#enabled = 1
let g:airline#extensions#vista#enabled = 1
let g:airline#extensions#fugutive#enabled = 1
let g:airline#extensions#virtualenv#enabled = 1
let g:airline_detect_paste=1
let g:airline_inactive_collapse=1
let g:airline_exclude_preview = 1
let g:airline#extensions#branch#enabled=1
let g:airline#extensions#syntastic#enabled=1
let g:airline_theme='jellybeans'
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.dirty='⚡'
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>h <Plug>AirlineSelectPrevTab
nmap <leader>l <Plug>AirlineSelectNextTab
let g:airline#extensions#tabline#buffer_idx_format = {
  \ '0': ' ',
  \ '1': '➊ ',
  \ '2': '➋ ',
  \ '3': '➌ ',
  \ '4': '➍ ',
  \ '5': '➎ ',
  \ '6': '➏ ',
  \ '7': '➐ ',
  \ '8': '➑ ',
  \ '9': '➒ '
  \}

"hi airline_tablabel ctermfg=231 ctermbg=none guifg=#ffffff guibg=none
"hi airline_tab    ctermfg=231 ctermbg=none guifg=#bbbbbb guibg=none
"call airline#highlighter#exec('airline_tabsel', ['#d8dee9', 'none', 189, 'none', ''])
""hi clear airline_tabsel
"hi airline_tabsel ctermfg=189 ctermbg=none guifg=blue guibg=none gui=underline cterm=underline
"hi airline_tabtype ctermfg=231 ctermbg=none guifg=#ffffff guibg=#870000
"hi airline_tabfill ctermfg=59 ctermbg=none guifg=#4f5b66 guibg=#151515
"hi airline_tabmod ctermfg=231 ctermbg=none guifg=#ffffff guibg=#437019
"hi airline_tabmod_unsel ctermfg=215 guifg=#ffb964
"hi airline_tabhid ctermfg=59 ctermbg=none guifg=#4f5b66 guibg=#151515
"hi airline_tablabel_right ctermfg=231 ctermbg=none guifg=#ffffff guibg=none
"hi airline_tab_right ctermfg=59 ctermbg=none guifg=#4f5b66 guibg=none
"hi airline_tabsel_right ctermfg=189 ctermbg=none guifg=#d8dee9 guibg=none
"hi airline_tabmod_right ctermfg=231 ctermbg=none guifg=#ffffff guibg=none
"hi airline_tabhid_right ctermfg=59 ctermbg=none guifg=#4f5b66 guibg=none
"hi airline_tabmod_unsel_right ctermfg=215 guifg=#ffb964
