fun! s:ChangeToLocalPath()
	if isdirectory(expand("%:p:h"))
		exe ":lcd " . escape(expand("%:p:h"), ' \')
	endif
endfun
au BufEnter * :call s:ChangeToLocalPath()
