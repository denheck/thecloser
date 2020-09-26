" Automatically insert closing quotes and parenthesis
" TODO: when on an empty line in a vim file don't autoclose double quotes if
" it's the first character on the line
" TODO: attempt to support common contractions
function! thecloser#InsertClosableCharacter(closable_char)
  let line = getline('.')

  " When typing a closing character with the cursor positioned 
  " just before it, jump over ths closing character instead of creating a
  " duplicate
  if line[col('.')] == a:closable_char
    " jumping over a closable character at the end of a line requires an
    " empty space to jump to
    if col('.') + 2 == col('$')
      call setline('.', line . ' ')
    endif

    call cursor(line('.'), col('.') + 2)
  elseif a:closable_char == "'" || a:closable_char == '"'
    let new_line = strcharpart(line, 0, col('.')) . a:closable_char . a:closable_char . strcharpart(line, col('.'))

    call setline('.', new_line)
    call cursor(line('.'), col('.') + 2)
  endif
endfunction

