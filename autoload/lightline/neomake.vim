let s:iinfos = get(g:, 'lightline#neomake#prefix_infos', 'I:')
let s:iwarnings = get(g:, 'lightline#neomake#prefix_warnings', 'W:')
let s:ierrors = get(g:, 'lightline#neomake#prefix_errors', 'E:')
let s:iok = get(g:, 'lightline#neomake#prefix_ok', 'OK')

function! lightline#neomake#warnings() abort
  if !exists(":Neomake")
    return ''
  endif
  let lwarns = neomake#statusline#LoclistCounts()['W']
  return lwarns == 0 ? '' : printf(s:iwarnings . '%d', lwarns)
endfunction

function! lightline#neomake#errors() abort
  if !exists(":Neomake")
    return ''
  endif
  let lerrors = neomake#statusline#LoclistCounts()['E']
  return lerrors == 0 ? '' : printf(s:ierrors . '%d', lerrors)
endfunction

function! lightline#neomake#infos() abort
  if !exists(":Neomake")
    return ''
  endif
  let linfos = neomake#statusline#LoclistCounts()['I']
  return linfos == 0 ? '' : printf(s:iinfos . '%d', linfos)
endfunction

function! lightline#neomake#ok() abort
  if !exists(":Neomake")
    return ''
  endif
  let list = neomake#statusline#LoclistCounts()
  return list == {} ? s:iok : ''
endfunction

" TODO: refatorar código para reuso de função
function! lightline#neomake#composer(key)
  if !exists(":Neomake")
    return ''
  endif
  let lint = neomake#statusline#LoclistCounts()[a:key]
  return lint == 0 ? '' : printf(s:prefix[a:key] . '%d', lint)
endfunction
