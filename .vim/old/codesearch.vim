function! OnlineDoc()
  let s:browser = "Safari"
let s:wordUnderCursor = expand("<cword>")
  if &ft == "js" || &ft == "ruby"
    let s:url = "http://www.google.com/codesearch?q=" . s:wordUnderCursor . "+lang:" . &ft
  elseif &ft == "python"
    let s:url = "http://docs.python.org/search.html?q=" . s:wordUnderCursor
  elseif &ft == "php"
    let s:url = "http://php.net/" . s:wordUnderCursor
  elseif &ft == "vim"
    let s:url = "http://www.google.com/codesearch?q=" . s:wordUnderCursor
  else
    return
  endif
  let s:cmd = "!open -a " . s:browser . " " . s:url
  execute s:cmd
  redraw!
endfunction
" Online doc search
map <Leader>cs :call OnlineDoc()<CR>

