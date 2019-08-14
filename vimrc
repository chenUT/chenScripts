"********************************
" Setting section
"********************************

" execute pathogen.vim
execute pathogen#infect()

" set the syntax on
syntax on<cr>

" set the wildmenu fuction on
set wildmenu

" set the line numbers visiable
set number

"enable the Statusline
set laststatus=2

"enable the autocorrect via autocorrect.vim
"source ~/.vim/plugin/autocorrect.vim

"enable highlight search and ignore case search
set hls is

"keep 5 lines visible above/below the cursor
set scrolloff=5

"turn on autoindent
"set autoindent

"turn on c indent
set cindent

"set comment color to lightblue
highlight Comment ctermfg=darkgray

"*******************************
" Mapping section
"*******************************
"-------------COMMAND MODE-------------
" Mappings to open multiple lines and enter insert mode.
"#\o --open# of lines and put cursor in second line with # min=3
"#o<esc> --open # of lines without going into insert mode
nnoremap <Leader>o :<C-u>call OpenLines(v:count, 0)<CR>S
nnoremap <Leader>O :<C-u>call OpenLines(v:count, -1)<CR>S
"-------------COMMAND MODE END---------

"-------------INSERT MODE--------------

"mapping the system call for pbpaste (paste the content from the clipboard in INSERT MODE), UNIX/LINUX only!
imap <c-j>p <c-r>=system('pbpaste')<cr>

"-------------INSERT MODE END----------

"**************************************
"             FUNCTION SECTION        *
"**************************************
"mapping the gcc complier within vim by using F3 (compile the code) and F4 (compile and run the code )

map <F5> :call CompileGcc() <cr>
func! CompileGcc()
	exec "w"
	exec "!gcc % -o %<"
endfunc

map <F6> :call CompileRunGcc() <cr>
func! CompileRunGcc()
	exec "w"
	exec "!gcc % -o %<"
	exec "! ./%<"
endfunc
" 
" Open multiple lines (insert empty lines) before or after current line,
" and position cursor in the new space, with at least one blank line
" before and after the cursor.
function! OpenLines(nrlines, dir)
  let nrlines = a:nrlines < 3 ? 3 : a:nrlines
  let start = line('.') + a:dir
  call append(start, repeat([''], nrlines))
  if a:dir < 0
    normal! 2k
  else
    normal! 2j
  endif
endfunction

"-----------Function END--------------
