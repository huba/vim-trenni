" Vim syntax file
" Language:						trenni
" Maintainer:					Huba Nagy <12huba@gmail.com>
" URL:								https://github.com/huba/vim-trenni

if exists("b:current_syntax")
	finish
endif

exe "runtime! syntax/xml.vim"
unlet! b:current_syntax

syn include @ruby syntax/ruby.vim

syn cluster trenniRegions contains=trenniExpression,trenniBlock

syn region trenniExpression		matchgroup=trenniDelimiter start="#{"	end="}"			 contains=@ruby containedin=ALLBUT,@trenniRegions keepend
syn region trenniBlock				matchgroup=trenniDelimiter start="<?r"	end="?>"	 contains=@ruby containedin=ALLBUT,@trenniRegions keepend

" Hacky way of ensuring that the separated end, elsif, else etc statements are
" still highlighted.
syn keyword rubyClosing end else elsif finally rescue containedin=@ruby
hi def link rubyClosing 			Statement

hi def link trenniDelimiter		PreProc

let b:current_syntax = 'trenni'

" vim: tabstop=2 shiftwidth=2 nowrap noexpandtab:
