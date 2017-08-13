" <leader> becomes comma ,
let mapleader=","

" and so we lose ',' to navigate, rebind space to ,
nnoremap <space> ,
vnoremap <space> ,

if !exists("*EnableYcm")
	function EnableYcm()
		call plug#load('YouCompleteMe')
		if exists('g:loaded_youcompleteme')
			call youcompleteme#Enable()
			"call cpphl#HL()
		endif
	endfunc
endif

nnoremap <silent> <leader>0 :call EnableYcm()<CR>

vmap <leader>t :Tabularize /=><CR>gv:retab!<CR>gv:s/ => /\t=>\t/g<CR>

" Easily change filetypes
nmap <silent> <leader><leader>p :set ft=php<CR>
nmap <silent> <leader>h :set ft=html<CR>
nmap <silent> <leader>j :set ft=javascript<CR>

" For php indent, align the 'break' with 'case'
let g:PHP_vintage_case_default_indent = 1

" Disable timeout
set timeoutlen=1000 ttimeoutlen=0

set completeopt=menu,menuone,noselect

set pumheight=12

" Enable statusline, for powerline
set laststatus=2
set statusline=%m%F%r%h%w\ [%l/%L,\ %v]\ [%p%%]\ %=[ft:\ %Y]\ [ff:\ %{&ff}]\ %{\"[enc:\ \".(&fenc==\"\"?&enc:&fenc).\"]\"}

" Show line numbers
set number

" Set default encoding to UTF-8
set enc=utf-8
"set fileencoding=utf-8

set fileformats=unix,dos,mac

" If not on windows and not in gvim, set term so we have colors
if !has("win32") && !has("gui_running") && !has("nvim") && !has("gui")
    "set term=xterm-256color
	set term=$TERM
end

set mouse+=a

" Tabs are tabs, 4 width
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Tabs are rounded to 4
set shiftround

" Tabs are not spaces.
set noexpandtab

" Autoindewnt
set autoindent

" Wrap text
set wrap
"set wrapmargin=15

"if has('linebreak')
"	set breakindent
"	let &showbreak = '↳ '
"end

" so cursor doesnt move when switching buffers
set nostartofline

" Instead of asking to close unsaved buffers, hide them
set hidden

" Self-explanatory.
set pastetoggle=<F2>

" Don't write .swp or ~ files
set nobackup
set noswapfile

" Show the title in terms 
set notitle

" Always see 5 lines when scrolling
set scrolloff=5

" Don't know what it does, but it does something
set backspace=indent,eol,start

set shiftround

set wildmenu
set wildmode=longest:full,full

" For ctrlp: ignore those things
set wildignore+=*.o,*/tmp/*,*.so,*.swp,*.zip,*/fichiersUpload/*,*.pyc,*/__pycache__/*,*/prefix/*,*/cache/*,*/vendor*,tags

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v.git$|vendor$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }

" open splits below
set splitbelow

" open splits to the right
set splitright

" faster macros
set lazyredraw

set incsearch

" Add ft=php for .tpl and .module files (Drupal / Custom CMS)
au BufNewFile,BufRead *.tpl,*.module set filetype=php
au BufNewFile,BufRead Dockerfile.* set filetype=dockerfile

" Copy / paste in the system's clipboard
set clipboard=unnamedplus

" Disable network thingy
 let g:netrw_dirhistmax = 0

autocmd InsertLeave * pclose

" PLUGINS 

" vim-go:
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 0
let g:go_metalinter_enabled = []
let g:go_metalinter_autosave_enabled = []
let g:go_metalinter_autosave = 0

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
nnoremap <silent> <leader>p :CtrlPBuffer<CR>

" YouCompleteMe
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_insertion  = 1
let g:ycm_use_ultisnips_completer = 0
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']

" UltiSnips
let g:UltiSnipsExpandTrigger="<leader><Tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsJumpForwardTrigger="<leader><Tab>"
let g:UltiSnipsListSnippets="<c-e>"


" delimitMate
let delimitMate_expand_cr = 1
let delimitMate_expand_space = 1
let delimitMate_matchpairs = "(:),[:],{:}"
let delimitMate_quotes = ""

" syntastic
" use python3 by default
let g:syntastic_python_python_exec = '/usr/bin/python3'

" tell jedi to use python 3
if has('python3')
	let g:jedi#force_py_version = 3
endif

" c++ private/public indenting
set cindent
set cinoptions=g0

" multi cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
"
" end all the errors !
if !exists(":Wq")
	command Wq wq
endif

" MAPPINGS

let g:move_key_modifier = 'C'

" auto select text
"nnoremap % V%

" Indent with arrows
nnoremap <Left> <<
nnoremap <Right> >>
vnoremap <Left> <gv
vnoremap <Right> >gv

" Move to next / prev tab
nnoremap <silent> <C-Right> :tabnext<CR>
nnoremap <silent> <C-Left> :tabprev<CR>
inoremap <silent> <C-Right> <ESC>:tabnext<CR>
inoremap <silent> <C-Left> <ESC>:tabprev<CR>
nnoremap <silent> <S-Right> :tabm +1<CR>
nnoremap <silent> <S-Left> :tabm -1<CR>

" New tab
nnoremap <C-T> :tabnew<CR>

" New buffer
nnoremap <leader>t :enew<CR>

" f3: toggle search highlight
nnoremap <F5> :set hlsearch!<CR>

" f4: toggle ignorecase
nnoremap <F6> :set ic!<CR>

nnoremap <leader>k :set list!<CR>
set listchars=tab:▸\ ,eol:¬

"noremap <leader>d :YcmCompleter GoTo<CR>

nnoremap zz :w<CR>
nnoremap <leader>v :tabnew $MY_VIMHOME/settings.vim<CR>
nnoremap <leader>ev :tabnew $MY_VIMHOME/vimrc<CR>

inoremap jj <Esc>:w<CR>

inoremap <c-a> <esc>A

nnoremap <F1> <nop>
nnoremap Q <nop>
nnoremap K <nop>

nmap <silent> <leader>n :NERDTreeToggle<CR>

" toggle relativenumber (on by default)
set rnu
function! NumberToggle()
  if(&relativenumber == 1)
	set nornu
  else
	set rnu
  endif
endfunc
nnoremap <C-L> :call NumberToggle()<cr>

nnoremap <leader>s :syntax on<cr>
nnoremap <leader><leader>s :syntax off<cr>

" COLORS / FONTS

" Default color theme
colors atom-dark
set background=dark
hi Visual  guifg=#000000 guibg=#FFFFFF gui=NONE cterm=NONE ctermbg=white ctermfg=black
if !has("gui_running")
	hi Normal ctermbg=NONE guibg=NONE
	hi NonText ctermbg=NONE guibg=NONE
endif

" Fonts and colors for gvim / windows
if has("gui_running")
    if has("gui_win32")
        set guifont=Consolas:h11:cANSI
    else
		set guifont=Monaco\ Bold\ 12
        "set guifont=Consolas\ 11
    endif
    set guioptions-=m
    set guioptions-=T
	set guioptions-=R
	set guioptions-=r
    set guioptions-=l
    set guioptions-=L
	set guioptions-=e
	set guioptions+=c
end


" Because apparently notepad++ is awesome and encourages you to save files
" with unix endings, as dos.
autocmd BufReadPost * nested
      \ if !exists('b:reload_dos') && !&binary && &ff=='unix' && (0 < search('\r$', 'nc')) |
      \   let b:reload_dos = 1 |
      \   e ++ff=dos |
      \ endif

" Save clipboard on exit
autocmd VimLeave * call system("xsel -ib", getreg('+'))

" buffers
nnoremap <cr> :ls<cr>:b<space>
nnoremap <BS> :b#<cr>

let g:move_map_keys = 0
vmap <silent> <S-Down> <Plug>MoveBlockDown
vmap <silent> <S-Up> <Plug>MoveBlockUp
nmap <silent> <S-Down> <Plug>MoveLineDown
nmap <silent> <S-Up> <Plug>MoveLineUp


let g:neomake_verbose = -1
let g:neomake_cpp_enabled_makers = []
let g:neomake_go_enabled_makers = ['go', 'govet']
let g:neomake_php_php_exe = "/opt/php/7/bin/php"
autocmd! BufWritePost * Neomake

let g:clamp_libclang_file='/usr/lib/llvm-3.6/lib/libclang.so.1'

nnoremap <leader>ag  :Grepper<cr>
nnoremap <leader>ak  :Grepper -cword -noprompt<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gb :Gblame<cr>

nnoremap / /\V\c
nnoremap ? ?\V\c

nmap <F1> <Plug>NumeriqueClasse
nmap <F2> <Plug>NumeriqueModule
nmap <S-F2> <Plug>NumeriqueLangues
nmap <F3> <Plug>NumeriqueTpl
nmap <F4> <Plug>NumeriqueActionTpl

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"


function! IPhpInsertUse()
    call PhpInsertUse()
    call feedkeys('a',  'n')
endfunction
autocmd FileType php inoremap <Leader>u <Esc>:call IPhpInsertUse()<CR>
autocmd FileType php noremap <Leader>u :call PhpInsertUse()<CR>
autocmd FileType php inoremap <Leader>us <Esc>:call PhpSortUse()<CR>
autocmd FileType php noremap <Leader>us :call PhpSortUse()<CR>

nmap <silent> <F8> :TagbarToggle<CR>

let g:phpcomplete_enhance_jump_to_definition = 1
nnoremap <leader>d <C-]>
nnoremap <F9> :<C-u>call phpcomplete#JumpToDefinition('normal')<CR>
nnoremap <C-F9> :<C-u>call phpcomplete#JumpToDefinition('split')<CR>

let g:grepper = {
    \ 'tools': ['ag'],
    \ 'open':  1,
    \ 'jump':  1,
    \ }

autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>

autocmd FileType php setlocal regexpengine=1

nnoremap <leader>bd :bd<cr>
  
let g:tagbar_type_php  = {
\ 'ctagstype' : 'php',
\ 'kinds'     : [
	\ 'i:interfaces',
	\ 'c:classes',
	\ 'd:constant definitions',
	\ 'f:functions',
	\ 'j:javascript functions:1'
\ ]
\ }

function! SetColors()
	set background=dark
	colors atom-dark
	hi Visual  guifg=#000000 guibg=#FFFFFF gui=NONE cterm=NONE ctermbg=white ctermfg=black
endfunction

nnoremap <leader>z :call J()<CR>

autocmd FileType debcontrol setlocal et
autocmd FileType javascript setlocal omnifunc=tern#Complete

if has("nvim")
	let g:deoplete#enable_at_startup = 1
else
	let g:neocomplete#enable_at_startup = 1
	if !exists('g:neocomplete#force_omni_input_patterns')
		let g:neocomplete#force_omni_input_patterns = {}
	endif
	"let g:neocomplete#force_omni_input_patterns.javascript = '[^. \t]\.\w*'
endif

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
	if exists(':NeoCompleteLock')==2
		exe 'NeoCompleteLock'
	endif
	let g:deoplete#disable_auto_complete = 0
endfunction

" Called once only when the multiple selection is canceled (default <Esc>)
function! Multiple_cursors_after()
	if exists(':NeoCompleteUnlock')==2
		exe 'NeoCompleteUnlock'
	endif
	let g:deoplete#disable_auto_complete = 1
endfunction

let g:ctrlp_reuse_window = 'startify'
autocmd User Startified setlocal buftype=

autocmd BufEnter * if isdirectory(expand('<afile>')) | set nobuflisted | endif

if has("termguicolors")
	set termguicolors
endif

vnoremap y myy`y
vnoremap Y myY`y

nnoremap J mzJ`z
nnoremap <silent><expr> <F10> ':set wrap! go'.'-+'[&wrap]."=b\r"

inoremap <C-s> <Esc>:w<CR>
nnoremap <leader>cp :e ~/.vim/UltiSnips/php.snippets<CR>

nnoremap <C-F2> :set cursorline!<CR>

let g:instant_markdown_autostart = 0

