"lua require('hlslens').setup({ auto_enable = true })

let g:searchx = {}

" Auto jump if the recent input matches to any marker.
let g:searchx.auto_accept = v:true

" The scrolloff value for moving to next/prev.
let g:searchx.scrolloff = &scrolloff

" To enable scrolling animation.
let g:searchx.scrolltime = 500

" To enable auto nohlsearch after cursor is moved
let g:searchx.nohlsearch = {}
let g:searchx.nohlsearch.jump = v:true

" Marker characters.
let g:searchx.markers = split('ASDFGHJKLQWERTYUIOPZXCVBNM', '.\zs')

" Convert search pattern.
function g:searchx.convert(input) abort
  if a:input !~# '\k'
    return '\V' .. a:input
  endif
  return a:input[0] .. substitute(a:input[1:], '\\\@<! ', '.\\{-}', 'g')
endfunction

 " Overwrite / and ?.
nnoremap / <Cmd>call searchx#start({'dir': 1})<CR><Cmd>call SearchInfo()<CR>
nnoremap ? <Cmd>call searchx#start({'dir': 0})<CR><Cmd>call SearchInfo()<CR>

" Move to next/prev match.
nnoremap n <Cmd>call searchx#next_dir()<CR><Cmd>call SearchInfo()<CR>zz
nnoremap N <Cmd>call searchx#prev_dir()<CR><Cmd>call SearchInfo()<CR>zz

function! SearchInfo() abort
    lua require('hlslens').start()
endfunction
