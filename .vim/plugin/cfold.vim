"
" Causes all comment folds to be opened and closed using z[ and z]
" respectively.
"
" Causes all block folds to be opened and closed using z{ and z} respectively.
"

function FoldOnlyMatching(re, op)
	mark Z
	normal gg
	let s:lastline = -1
	while s:lastline != line('.')
		if match(getline(line('.')), a:re) != -1
			exec 'normal ' . a:op
		endif
		let s:lastline = line('.')
		normal zj
	endwhile
	normal 'Z
	unlet s:lastline
endfunction

nnoremap <silent> z[ :call FoldOnlyMatching('/[*][*]', 'zo')<CR>
nnoremap <silent> z] :call FoldOnlyMatching('/[*][*]', 'zc')<CR>
nnoremap <silent> z{ :call FoldOnlyMatching('[ \t]*{', 'zo')<CR>
nnoremap <silent> z} :call FoldOnlyMatching('[ \t]*{', 'zc')<CR>

