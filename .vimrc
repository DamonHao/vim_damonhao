"===============================================================================
" Author: damonhao
" create: 2013/09/23
"===============================================================================
syntax enable
syntax on
filetype plugin indent on
set backspace=2
set autoindent

autocmd FileType h,hpp,cc,c,cpp set shiftwidth=4 | set softtabstop=4 | set cindent shiftwidth=4|
set expandtab

"Show row number,"set num" is right two. 
set number
"When in Editing mode,show the cursor state at bottom right corner. 
set ruler 
"Increase the power of search.Show the search result when you are typing,
"For example, when you just type "/bo",it will match the words like "book" in the text.
set incsearch
"Highlight the search result.
set hlsearch
"Show editor state in the bottom left corner.
set showmode
"Show the command being executed in the status bar.
set showcmd

set matchpairs=(:),{:},[:],<:>

"Set ways to open a new window
set splitbelow
set splitright

"Set file encoding mode to compact the Windows OS, because in Windows,
"telnet's texts are encoded in gbk.
"set encoding=gbk
"set termencoding=gbk
"set fileencodings=utf8,cp936,big5,gbk

"Code folding
"set foldmarker={,}
"set foldmethod=marker
set foldmethod=syntax
set foldlevel=100       " Don't autofold anything (but I can still fold manually)
"set foldopen-=search   " don't open folds when you search into them
"set foldopen-=undo     " don't open folds when you undo stuff
"set foldcolumn=4

"Highlight current line
set cursorline
hi cursorline cterm=NONE ctermbg=darkred ctermfg=white


"--------------------------------------------------------------------------------
"The following is plugin setting
"--------------------------------------------------------------------------------

"--------------------------------------------------------------------------------
"Plugin cscope
"--------------------------------------------------------------------------------
if has("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
	set nocsverb

	if filereadable("cscope.out")
		cs add cscope.out
	endif
	set csverb
endif

"map <C-F12> :!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>  

"Set shortcuts for the plugin Cscope 
"<C-_>s means "Ctrl+Shift+-" and then quickly press "s" before it turn back to
"normal state
nmap <C-_>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-_>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-_>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-_>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"--------------------------------------------------------------------------------
"Plugin quickfix
"--------------------------------------------------------------------------------
"Show cscope's result in quickfix window
:set cscopequickfix=s-,c-,d-,i-,t-,e-
"Set shortcut for quickfix
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>

"--------------------------------------------------------------------------------
"Plugin TagList :Tlist
"--------------------------------------------------------------------------------
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"Combine FileExplorer and TagList into the plugin WinManager
let g:winManagerWindowLayout='FileExplorer|TagList'
"Toggle WinManager
nmap wm :WMToggle<cr>

"Omni completion
"set completeopt=longest,menu

"--------------------------------------------------------------------------------
"Plugin MiniBufExplorer
"--------------------------------------------------------------------------------
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavArrows = 1

"--------------------------------------------------------------------------------
"Plugin A
"--------------------------------------------------------------------------------
"Set shortcuts for the plugin A
nnoremap <silent> <F12> :A<CR>

"--------------------------------------------------------------------------------
"Plugin superTab
"--------------------------------------------------------------------------------
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType= "<C-X><C-O>"

"--------------------------------------------------------------------------------
"Plugin Grep
"--------------------------------------------------------------------------------
"Set shortcut for the plugin Grep
nnoremap <silent> <F3> :Grep<CR>

"--------------------------------------------------------------------------------
"Plugin cpp omni complete
"--------------------------------------------------------------------------------
"Set cpp omni complete
"Configure tags - add additional tags here or comment out not-used ones
 set tags+=~/.vim/tags/cpp
 set tags+=~/.vim/tags/gl
 set tags+=~/.vim/tags/sdl
 set tags+=~/.vim/tags/qt4
 "Build tags of your own project with Ctrl-F12
 map <C-F12> :!ctags -R --sort=yes --c++-kinds=+pl --fields=+iaS --extra=+q .<CR>

"OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
"Automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
