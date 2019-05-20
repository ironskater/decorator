"====================================================================
"                               INDEX                               =
"====================================================================
" <Plugins>
" AirLine
" Anzu
" Vundle
" Syntastic
" Autotag
" Youcompleteme
" Trinity
" Tagbar
" NerdTree
" NerdTree-Git
" Vim-better-whitespace
" Vim-cpp-enhanced-highlight
" Monokai
" IndentLine

" <Configuration>
" Folding
" Syntax
" Generic
" Macro

"====================================================================
"                      leader charactor setting                     =
"====================================================================
let mapleader=";"
let maplocalleader="\\"


"====================================================================
"                      Vundle setting                               =
"====================================================================
set nocompatible              " 去除VI一致性,必須
filetype off                  " 必須

" 設定 runtime path 以包含並初始化 Vundle
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()
" 另一種選擇, 指定 Vundle 安裝插件的路徑
" call vundle#begin('~/some/path/here')
"
" 讓 Vundle 管理自身,必須
 Plugin 'VundleVim/Vundle.vim'

" --------------------------------
" | Add user-define Plugins here |
" --------------------------------
" Plugin 'Valloric/YouCompleteMe'
" 以下範例用來演示如何安裝不同來源的插件.
" 請將安裝插件的命令放在vundle#begin和vundle#end之間.
" Github上的插件
" 格式為 Plugin '使用者名/插件倉庫名'
" Plugin 'tpope/vim-fugitive'
" 來自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名稱' 實際上是 Plugin 'vim-scripts/插件倉庫名' 只是此處的用戶名可以省略
" Plugin 'L9'
" 不由 GitHub 託管的 Git 倉庫 Plugin 'git clone 後面的地址'
" Plugin 'git://git.wincent.com/command-t.git'
" 本地的 Git 倉庫(例如自己的插件) Plugin 'file:///+本地插件倉庫絕對路徑'
" Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在倉庫的子目錄中.
" 指定路徑用以正確設定runtimepath. 以下範例插件在sparkup倉庫的vim目錄下
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安裝L9，如果已經安裝過這個插件，可利用以下格式避免命名衝突
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'scrooloose/nerdcommenter'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-fugitive'
"[cscope commands list]
"find : Query for a pattern            (Usage: find c|d|e|f|g|i|s|t name)
"       c: Find functions calling this function
"       d: Find functions called by this function
"       e: Find this egrep pattern
"       f: Find this file
"       g: Find this definition
"       i: Find files #including this file
"       s: Find this C symbol
"       t: Find this text string
"Plugin 'chazy/cscope_maps'
"Plugin 'vim-scripts/taglist.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'majutsushi/tagbar'
Plugin 'Valloric/YouCompleteMe'
Plugin 'craigemery/vim-autotag'
Plugin 'octol/vim-cpp-enhanced-highlight'
"Plugin 'scrooloose/syntastic'
"Plugin 'golangtw/go.vim' Golang Syntax Highlight
Plugin 'crusoexia/vim-monokai'
"Plugin 'Yggdroot/indentLine'
Plugin 'osyo-manga/vim-anzu'

" -------------------------------------
" | Add user-define Plugins here(END) |
" -------------------------------------
" 你的所有插件需要在下面這行之前
 call vundle#end()            " 必須
 filetype plugin indent on    " 必須
" " 要禁止插件改變縮排,可以使用下行替代:
" "filetype plugin on
" "
" 簡要幫助文檔
" :PluginList       - 列出所有已配置的插件
" :PluginInstall    - 安裝插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜尋 foo ; 追加 `!` 清除本地快取
" :PluginClean      - 清除未使用插件,需要確認; 追加 `!`
" 自動批准移除未使用插件

" 查閱 :h vundle 獲取更多細節和wiki以及FAQ
" 將與插件無關的設放在這行之後


"====================================================================
"                      AirLine setting                           =
"====================================================================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=0
let g:airline#extensions#branch#enabled=1
let g:airline_theme='distinguished' "choose your vim-airline theme
"monochrome, zenburn, onedark
"bubblegum, distinguished, soda, violet
let g:airline#extensions#tabline#fnamemod = ':t'

" Mode map
let g:airline_mode_map = {
	\ '__' : '--',
	\ 'n'  : 'N',
	\ 'i'  : 'I',
	\ 'R'  : 'R',
	\ 'c'  : 'C',
	\ 'v'  : 'V',
	\ 'V'  : 'V-L',
	\ '' : 'V-B',
	\ 's'  : 'S',
	\ 'S'  : 'S-L',
	\ '' : 'S-B',
	\ 't'  : 'T',
	\ }


"====================================================================
"                      Anzu setting                              =
"====================================================================
" clear status
nnoremap <Esc><Esc> <Plug>(anzu-clear-search-status)


"====================================================================
"                      IndentLine setting                           =
"====================================================================
nnoremap <F10> :IndentLinesToggle<CR>
let g:indentLine_enabled = 1
let g:indentLine_color_term = 239
"let g:indentLine_bgcolor_term = 202
"let g:indentLine_bgcolor_gui = '#FF5F00'


"====================================================================
"                      Monokai setting                              =
"====================================================================
let g:monokai_term_italic = 1
let g:monokai_gui_italic = 1


"====================================================================
"                      Vim-better-whitespace setting                =
"====================================================================
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1


"====================================================================
"                      Vim-cpp-enhanced-highlight                   =
"====================================================================
let c_no_curly_error=1
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
"let g:cpp_experimental_simple_template_highlight = 1 "slow
let g:cpp_experimental_template_highlight = 1 "fast
let g:cpp_concepts_highlight = 1
let g:cpp_no_function_highlight = 1


"====================================================================
"                      Syntastic setting                            =
"====================================================================
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_jump = 0
let g:syntastic_cpp_compiler = "g++"
let g:syntastic_cpp_compiler_options = "-std=gnu++11 -Wall -Wextra -Wpedantic"
let g:syntastic_c_compiler = "gcc"
let g:syntastic_c_compiler_options = "-std=gnu99 -Wall -Wextra -Wpedantic"

nnoremap <F2>  :SyntasticToggleMode<CR>

"====================================================================
"                      Autotag setting                              =
"====================================================================
let g:autotagTagsFile=".tags"


"====================================================================
"                      Youcompleteme setting                        =
"====================================================================
set rtp+=~/.vim/bundle/YouCompleteMe
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'

let g:ycm_collect_identifiers_from_tags_files=1
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_key_list_select_completion=['<c-j>', '<Down>']
let g:ycm_key_list_previous_completion=['<c-k>', '<Up>']
let g:ycm_key_list_stop_completion=['<Enter>']
let g:ycm_key_invoke_completion='<c-l>'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_add_preview_to_completeopt = 0

let g:ycm_show_diagnostics_ui=0   "When set, this option turns on YCM's diagnostic display features
let g:ycm_enable_diagnostic_signs=0 "關閉語法檢查符號
let g:ycm_enable_diagnostic_highlighting=0 "關閉語法檢查

"ycm黑名單
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \ 'markdown' : 1,
      \ 'unite' : 1,
      \ 'text' : 1,
      \ 'vimwiki' : 1,
      \ 'gitcommit' : 1,
      \}

nnoremap <leader>df :YcmCompleter GoToDefinition<CR>
nnoremap <leader>dc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>ty :YcmCompleter GetType<CR>


"====================================================================
"                      Tagbar setting                               =
"====================================================================
" Open and close the tagbar separately
nnoremap <F7> :TagbarToggle<CR>


"====================================================================
"                      NerdTree setting                             =
"====================================================================
let g:NERDTreeWinPos = "left" "設定視窗在左側,注意當Trinity開啟時會無效
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <F12> :NERDTreeToggle<Enter>
"autocmd vimenter * NERDTree "open NERDTree automatically when vim start up

"Open a NERDTree automatically when vim starts up if no files were specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 1
"
" Root change
nnoremap <leader>rc :NERDTree .<CR>

" Refresh pane
nnoremap <Leader>rp :NERDTreeFocus<cr>R<c-w><c-p>
"====================================================================
"                      NerdTree-Git setting                         =
"====================================================================
"Default setting
"let g:NERDTreeIndicatorMapCustom = {
    "\ "Modified"  : "✹",
    "\ "Staged"    : "✚",
    "\ "Untracked" : "✭",
    "\ "Renamed"   : "➜",
    "\ "Unmerged"  : "═",
    "\ "Deleted"   : "✖",
    "\ "Dirty"     : "✗",
    "\ "Clean"     : "✔︎",
    "\ 'Ignored'   : '☒',
    "\ "Unknown"   : "?"
    "\ }

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "M",
    \ "Staged"    : "S",
    \ "Untracked" : "U",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" Show ignore status
"let g:NERDTreeShowIgnoredStatus = 1 (a heavy feature may cost much more time)


"====================================================================
"                      ctags setting                                =
"====================================================================
"Ctags path(using 'za' to expand it) {{{
"}}}
"set tags用來設定vim要去哪裡找到tag文件
set autochdir
"set tags=./tags,tags;$HOME
set tags=./tags;
set tags+=/home/iot/Library/libmodbus-3.0.6/src/tags
set tags+=/home/iot/Library/mosquitto/mosquitto-1.5/tags
set tags+=/home/iot/Atelier/vppd/koncentrator/library/tags
set tags+=/home/iot/Atelier/vppd/koncentrator/application/vppd/tags
"system library tag
"set tags+=~/.vim/systags
"http://wen00072.github.io/blog/2016/11/26/vim-setup-for-trace-c-code/#vtr-pkg
"http://blog.csdn.net/dengxiayehu/article/details/6330200

"ctrl+]:於分割畫面開啟function definition
":vsplit<cr>  於命令欄輸入vsplit指令
"<c-w>l       將游標位置切換到右邊畫面
"<c-]>        跳躍至function definition
nnoremap <c-s-]> :vsplit<cr><c-w>l<c-]>
"ctrl+t: 跳回去
"nnoremap <c-t> <c-t><c-w>h:q<cr>


"====================================================================
"                      cscope match setting                         =
"====================================================================
"symbol: find all references to the token under cursor
nnoremap <leader>s :cs find s <C-R>=expand("<cword>")<CR><CR>

"global: find global definition(s) of the token under cursor
nnoremap <leader>g :cs find g <C-R>=expand("<cword>")<CR><CR>

"calls:  find all calls to the function name under cursor
nnoremap <leader>c :cs find c <C-R>=expand("<cword>")<CR><CR>

"text:   find all instances of the text under cursor
nnoremap <leader>t :cs find t <C-R>=expand("<cword>")<CR><CR>

"egrep:  egrep search for the word under cursor
nnoremap <leader>e :cs find e <C-R>=expand("<cword>")<CR><CR>

"file:   open the filename under cursor
nnoremap <leader>f :cs find f <C-R>=expand("<cfile>")<CR><CR>

"includes: find files that include the filename under cursor
nnoremap <leader>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

"called: find functions that function under cursor calls
nnoremap <leader>d :cs find d <C-R>=expand("<cword>")<CR><CR>

set csre
" add any cscope database automatically
function! LoadCscope()
  let db = findfile("cscope.out", ".;")
  if (!empty(db))
    let path = strpart(db, 0, match(db, "/cscope.out$"))
    set nocscopeverbose " suppress 'duplicate connection' error
    exe "cs add " . db . " " . path
    set cscopeverbose
  " else add the database pointed to by environment variable
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif
endfunction
au BufEnter /* call LoadCscope()

"[fonts setting]
"set guifont=Inconsolata\ for\ Powerline\ 20
"let g:airline_powerline_fonts=1
"set laststatus=2


"====================================================================
"                      Folding setting                              =
"====================================================================
set foldmethod=syntax "開啟folding, 相關快捷鍵如下:
"za: 展開/折疊當前block
"zo: 展開當前block(不含巢狀展開)
"zO: 巢狀展開當前block
"zc: 折疊當前block
"zM: 折疊file裡的所有block
"zR: 展開file裡的所有block(包含巢狀展開)


"====================================================================
"                      Syntax setting                               =
"====================================================================
set term=xterm-256color
syntax enable
syntax on
colorscheme monokai
"將行號顏色改為白色
highlight LineNr ctermfg=231
highlight CursorLine ctermbg=18
syntax region cCHARs start=/'/ skip=/\\/ end=/'/
highlight link cCHARs String

" 讓tmux背景色不要跑掉
if &term =~ '256color'
	set t_ut=
endif


"====================================================================
"                      Generic setting                              =
"====================================================================
"[Future Append] 增加每行字數的最大上限

set backspace=indent,eol,start "To allow backspacing over everything in insert mode
set incsearch "開啟即時搜尋
set t_Co=256 "開啟256 colors
set number "開啟line number
set autoindent "開啟自動縮排
set shiftwidth=4 "自動縮排對齊間隔數
"set expandtab "將tab轉為space
set tabstop=4 "設定tab鍵為4個空格長度
set cursorline "開啟游標底線
filetype indent on "依照檔案類型來決定自動縮排類型
set mouse=a "開啟滑鼠功能

inoremap <> <><Esc>i
inoremap () ()<Esc>i
inoremap "" ""<Esc>i
inoremap '' ''<Esc>i
inoremap [] []<Esc>i
inoremap {} {}<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
inoremap <Esc><Enter> <Esc>la
inoremap jk <esc>
inoremap jl <esc>f"a
inoremap JL <esc>f)a

"[ 現在狀態欄的部份改以airline取代, 以下設定捨棄 ]
"set laststatus=2 "開啟狀態欄
"set statusline=%f\ -\ FileType:\ %y
"set statusline+=\ [%04l/%04L] "以4個欄位顯示當前的line number, 分隔線/後顯示總行數

"設定vim的unnamed register
"其他的APP如gedit中滑鼠選字後可以用"*p貼到vim
"同樣的"*y6y的結果可以貼在其他的APP如gedit上
set clipboard+=unnamed
"set clipboard+=unnamedplus
"在normal mode按下ctrl+v可以貼上來自其他app的訊息
nnoremap <c-v> "*p
"在visual mode按下ctrl+c可以複製vim裡的訊息, 並貼到其他app裡
vnoremap <c-c> "+yy
"在insert mode按下ctrl+v貼上訊息
inoremap <c-v> <esc>"*pa

"[ Highlight Searching ]
set hlsearch
"按F4開啟/關閉highlight search
nnoremap <F4> :set hlsearch! hlsearch?<CR>
"改變highlight search顏色
hi Search cterm=NONE ctermfg=white ctermbg=166

"產生註解, 格式如下
" /**
"  * |
"  */
inoremap /**<cr> /**<cr><cr>/<esc>ka<space>

"產生註解, 格式如下
"/* | */
inoremap /*<space> /**/<esc>hi<space><space><esc>ha

nnoremap * *N
nnoremap <c-d> dd
nnoremap H ^
nnoremap L $
nnoremap J 10j
nnoremap K 10k
"gg 跳到文件第一列
"G  跳到文件最後一列
"跳至當前畫面上方
nnoremap <leader>k H
"跳至當前畫面中間
nnoremap <leader>m M
"跳至當前畫面下方
nnoremap <leader>j L
"-ev:呼叫.vimrc於分割畫面
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
"-sv:重新載入.vimrc的設定
nnoremap <leader>sv :source $MYVIMRC<cr>
"ctrl+p:向前翻閱緩衝區
nnoremap <c-p> :bprev<CR>
"ctrl+n:向後翻閱緩衝區
nnoremap <c-n> :bnext<CR>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l

"tab: 向右縮排
nnoremap <Tab> >gv
"shift + tab: 向左縮排
nnoremap <S-Tab> <gv


set ts=4 sw=4
"tab: 向右縮排
vnoremap <Tab> >gv
"shift + tab: 向左縮排
vnoremap <S-Tab> <gv
vnoremap <c-d> d
vnoremap H ^
vnoremap L $
vnoremap J 10j
vnoremap K 10k

"onoremap p i(
"onoremap inp :<c-u>normal! f(vi(<cr>
"onoremap ilp :<c-u>normal! F)vi(<cr>

nnoremap <leader>np :<c-u>normal! f(di(<cr>i
nnoremap <leader>lp :<c-u>normal! F)di(<cr>i

"====================================================================
"                      Macro setting                                =
"====================================================================
" --validate=TTNG00124B0004329AFE,TAT,EST03,0100,0278,IFII00124B0004329AFE,IFII,MODEL-01,0100,0202
" 讓單字兩側加上自己想要的delimiter
function! s:surround()
	let word = expand("<cword>")
	let wrap= input("wrap with: ")
	let command = "s/".word."/".wrap.word.wrap."/"
	execute command
endfunction
nnoremap <leader>de :call <SID>surround()<CR>

" 建立mva電錶格擋清單時用到的
"function! s:surround()
	"let prefix = "IFII"
	"let postfix = ",\ \\"
	"let word = expand("<cword>")
	"let wrap= input("wrap with: ")
	""let command = "s/".word."/".wrap.word.wrap."/"
	"let command = "s/".word."/".wrap.prefix.word.wrap.postfix"/"
	"execute command
"endfunction
"nnoremap cx :call <SID>surround()<CR>

augroup c_group
    autocmd!

    "展開所有程式碼
    autocmd FileType c :execute "normal! zR<cr>"

    autocmd FileType c :iabbrev <buffer> inc #include
    autocmd FileType c :iabbrev <buffer> io <stdio.h>
    autocmd FileType c :iabbrev <buffer> lib <stdlib.h>
    autocmd FileType c :iabbrev <buffer> incio #include <stdio.h>
    autocmd FileType c :iabbrev <buffer> inclib #include <stdlib.h>

    "建立新檔案及儲存檔案時同時建立及更新ctags
    "autocmd BufNewFile,BufWritePost *.c,*.h :!ctags -R --c-kinds=+cdefglmnpstuvx --fields=+iaS --extra=+q *
augroup END

augroup cpp_group
    autocmd!
    autocmd FileType cpp :iabbrev <buffer> inc #include
    autocmd FileType cpp :iabbrev <buffer> io <stdio.h>
    autocmd FileType cpp :iabbrev <buffer> ios <iostream>

    "建立新檔案及儲存檔案時同時建立及更新ctags
    "autocmd BufNewFile,BufWritePost *.cpp,*.hpp :!ctags -R --c++-kinds=+cdefglmnpstuvx --fields=+iaS --extra=+q *
augroup END

" [Folding]
" Using 'za' to expand/fold it
" Vimscript file settings {{{
" }}}
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

"Changing the cursor shape between insert and normal mode"
if has("autocmd")
    autocmd VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
    autocmd InsertEnter,InsertChange *
        \ if v:insertmode == 'i' |
        \   silent execute '!echo -ne "\e[5 q"' | redraw! |
        \elseif v:insertmode =='r' |
        \   silent execute '!echo -ne "\e[3 q"' | redraw! |
        \endif
    autocmd VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" Highlight all instances of word under cursor, when idle.
" Useful when studying strange source code.
" Using <F3> to toggle highlighting on/off.
nnoremap <F3> :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
	au! auto_highlight
	augroup! auto_highlight
	setl updatetime=4000
	echo 'Highlight current word: off'
	return 0
  else
	augroup auto_highlight
	  au!
	  au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
	augroup end
	setl updatetime=500
	echo 'Highlight current word: ON'
	return 1
  endif
endfunction

" 當對.vimrc存檔時自動載入新的.vimrc
"autocmd BufWritePost $MYVIMRC source $MYVIMRC
