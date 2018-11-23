function! lightline#neomake#errors() abort
  if !exists(":Neomake")
    return ''
  endif
  let lcount_errors = (get(neomake#statusline#LoclistCounts(), 'E') + get(neomake#statusline#QflistCounts, 'E'))
  return lcount_errors == 0 ? '' : printf('E: ' . '%d', lcount_errors)
endfunction
