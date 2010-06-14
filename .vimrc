set nocompatible
set cpoptions=aABceFsmq
set autochdir
set nostartofline " don't jump to the first character when paging
set title
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set nowb
set noswapfile
set ttyfast
let mapleader = ','
let g:mapleader = ','
let localleader = ','
let g:localleader = ','
let leader = ','
let g:leader = ','

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DISPLAY
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ruler
set number
set showcmd
set laststatus=2
set complete=.,w,b,u,U,t,i,d,s,k
filetype plugin indent on
set winminheight=0
set winminwidth=0
set winheight=10
set display+=lastline
set textwidth=0
set columns=90
set wrapmargin=10
set numberwidth=5

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BEHAVIOR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoread
set noautowrite
set visualbell
set t_vb= " visual bell
set shellcmdflag=-c
set shell=bash\ -l
set modeline
set modelines=5
set tabpagemax=100
set mousemodel=extend
set noea
set shortmess=aOstT " shortens messages to avoid 'press a key' prompt
set magic
set viminfo='10,\"100,:20,%,n~/.viminfo
set confirm
set report=0
set smartcase

" Saving sessions
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TEXT EDITING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set imd
set wildmenu
set wildmode=list:longest,full
set wildignore+=*.o,*~,.lo
set iskeyword+=$,@,%,# " none of these are word dividers
set iskeyword-=_,. " these are word dividers
set whichwrap=b,s,h,l,<,>,~,[,] "everything wraps
set undolevels=1000
set autoindent
set preserveindent
set nosmartindent
set smarttab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set wrap
set formatoptions=lcroqwan2vb1
set showmatch
set matchtime=5
set list
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬,trail:-
set showbreak=…
set encoding=utf-8 fileencodings=.
set showfulltag

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FOLDS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set foldmethod=indent
set foldenable
set foldopen=block,hor,mark,percent,quickfix,tag
set foldminlines=2
set fillchars+=fold:\

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BUFFERS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
set bufhidden=hide
set hidden " you can change buffers without saving
set switchbuf=usetab
set splitright
set scrolloff=2
set sidescrolloff=2
set showtabline=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
colorscheme wombat256
set background=dark
hi NonText ctermfg=7 guifg=gray
hi SpecialKey ctermfg=8

" Use the below highlight group when displaying bad whitespace is desired.
highlight BadWhitespace ctermbg=red guibg=red

" full Python syntax highlighting
let python_highlight_all=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" STATUS LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set laststatus=2
" %t: current file
" %n: buffer number
" %m%r: modified and writable flags
" %y: filetype
" %=: align right
" %{TagInStatusLine()}: show current class/function in Python
" %041: current line number
" %04L: total number of lines
" %p%%: how far through the file the current line is, percentage
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
set statusline=%F\ (%n)\ %([%M%R%H%W]\ %)%y\ %=%<[%04l/%04L\ %03c]\ %p%%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" BACKUPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
silent execute '!mkdir -p ~/.vim_backups'
set backupdir=~/.vim_backups//
set directory=~/.vim_backups//
if has("vms")
    set nobackup
else
    set backup
endif
set nowb
set noswapfile
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
set history=500
set updatecount=100

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SPELLING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if v:version >= 700
    setlocal spell spelllang=en_us
    nmap <LocalLeader>ss :set spell!<CR>
endif
try
    lang en_US
catch
endtry

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SEARCH
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch   " do incremental searching
set ignorecase
set infercase
set hlsearch
set showmatch
set diffopt=filler,iwhite

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COMMAND-LINE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cno $q <C-\>eDeleteTilSlash()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SETTINGS PER FILETYPE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    " Enable file type detection
    filetype plugin indent on

    " Syntax of these languages is fussy over tabs Vs spaces
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
    autocmd FileType yaml setlocal ts=4 sts=4 sw=4 expandtab

    " Customisations based on house-style (arbitrary)
    autocmd FileType html setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType xhtml setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType html.django_template setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType htmldjango setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab
    autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab nocindent

    " Treat .rss files as XML
    autocmd BufNewFile,BufRead *.rss setfiletype xml

    " Automatically strip extraneous whitespace when saving Python or
    " Javascript files.
    autocmd BufWritePre *.py,*.js :call <SID>StripTrailingWhitespaces()

    " markdown
    augroup mkd
        autocmd BufRead *.mkd  set ai formatoptions=tcroqn2 comments=n:>
    augroup END

    " JSON syntax
    au! BufRead,BufNewFile *.json setfiletype json

    " jQuery syntax
    au! BufRead,BufNewFile *.js set ft=javascript.jquery

    " Display tabs at the beginning of a line in Python mode as bad
    au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
    " Make trailing whitespace be flagged as bad
    au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /\s\+$/

    " only UNIX line endings.
    au BufNewFile *.* set fileformat=unix

    autocmd BufEnter * :syntax sync fromstart

    " mapping to make HTML files Django-highlighted
    autocmd BufEnter *html nmap <F6> :setfiletype htmldjango<CR>
    autocmd BufEnter *html nmap <S-F6> :setfiletype django<CR>

    if version >= 700
        autocmd FileType python set omnifunc=pythoncomplete#Complete
        autocmd FileType css set omnifunc=csscomplete#CompleteCSS
    endif

    " CSS, XML, and HTML file shoulds be folded based on indent
    au BufNewFile,BufRead *css,*xml,*htm* set foldmethod=indent

    " CSS and Sass files should see - as part of a keyword
    autocmd FileType css,sass set iskeyword +=-

endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" KEY MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CD to directory of current file
map <Leader>cd :cd %:p:h<CR>

" Grep/QuickFix window bindings
map <Leader>c :botright cw 10<CR>

" Don't move around in Insert mode
inoremap <Left> <Esc><Right><Left>
inoremap <Right> <Esc><Right><Right>
inoremap <Up> <Esc><Right><Up>
inoremap <Down> <Esc><Right><Down>

" Easily move chunks of text
nnoremap <A-j> :m+<CR>==
nnoremap <A-k> :m-2<CR>==
inoremap <A-j> <Esc>:m+<CR>==gi
inoremap <A-k> <Esc>:m-2<CR>==gi
vnoremap <A-j> :m'>+<CR>gv=gv
vnoremap <A-k> :m-2<CR>gv=gv

" Mac OS X/Safari keybindings for tabs
nmap <D-[> :tabprevious<CR>
nmap <D-]> :tabnext<CR>
map <D-[> :tabprevious<CR>
map <D-]> :tabnext<CR>
imap <D-[> <Esc>:tabprevious<CR>i
imap <D-]> <Esc>:tabnext<CR>i
nmap <D-t> :tabnew<CR>
imap <D-t> <Esc>:tabnew<CR>

" Bind Command-arrow/movement to move between windows
map <D-J> <C-W>j
map <D-S-Down> <C-W>j
map <D-K> <C-W>k
map <D-S-Up> <C-W>k
map <D-H> <C-W>h
map <D-S-Left> <C-W>h
map <D-L> <C-W>l
map <D-S-Right> <C-W>l

:map <D-0> <C-W>= " make Command-0 equal windows

" If I forgot to sudo a file, do that with :w!!
cmap w!! %!sudo tee > /dev/null %

" Don't use Ex mode, use Q for formatting
nmap Q gq

" Turn hidden characters on/off
nmap <silent> <LocalLeader>s :set nolist!<CR>

" Up/down go visually instead of by physical lines
" Interactive ones need to check whether we're in the autocomplete popup
map <up> gk
"inoremap <up> <C-R>=pumvisible() ? "\<lt>up>" : "\<lt>C-o>gk"<Enter>
map <down> gj
"inoremap <down> <C-R>=pumvisible() ? "\<lt>down>" : "\<lt>C-o>gj"<Enter>

" Map normal mode Enter to add a new line before the current one
nmap <Enter> O<Esc>

" map F1 to open previous buffer
map <F1> :previous<CR>
" map F2 to open next buffer
map <F2> :next<CR>
" fast open a buffer by search for a name
map <c-q> :sb

" Makes W send w when it's a command
command! W w

" bind command-]/command-[ to act like TextMate
nmap <D-]> >>
nmap <D-[> <<
vmap <D-]> >gv
vmap <D-[> <gv

" Toggle search highlight
nnoremap <silent> <Leader>ts :silent :set invhlsearch<CR>:set hlsearch?<CR>

" Folds
nnoremap <silent> <Space> @=(foldlevel('.')?'za':'l')<CR>
" set <space> to toggle folds in normal & visual modes
nnoremap <space> za
vnoremap <space> zf

" Searching
nmap n nzzzv
nmap N Nzzzv
nmap * *zzzv
nmap # #zzzv
nmap g* g*zzzv
nmap g# g#zzzv

" Parenthesis/bracket expanding
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Map auto complete of (, ", ', [
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i

" Mappings for cope
map <leader>cc :botright cope<CR>
map <leader>n :cn<CR>
map <leader>p :cp<CR>

" Mapping for tabs/buffers
map gz :bdelete<CR>
map gb :bnext<CR>
map gB :bprev<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN SETTINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" PyDiction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pydiction_location="/Users/kennethlove/.vim/ftplugin/python/pydiction/complete-dict"
if has("autocmd")
    autocmd FileType python set complete+=k/Users/kennethlove/.vim/ftplugin/python/pydiction iskeyword+=.,(
endif

" MATCHIT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
runtime plugins/matchit.vim
let b:match_ignorecase = 1

" NETRW
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Default to tree view
let g:netrw_lifestyle = 3
" hide common hidden files
let g:netrw_list_hide = '.*\.py[co]$,\.git$,\.swp$'
" Don't use fricken elinks, wtf
let g:netrw_http_cmd = "wget -q -O" " or 'curl -Ls -o'
let g:netrw_winsize = 10
let g:netrw_alto = 1

" PROJECT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <Leader>P :Project<CR>
let g:proj_window_width = 30
let g:proj_window_increment = 15
let g:proj_flags = "istbcLST"

" LUSTYJUGGLER
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:LustyJugglerSuppressRubyWarning = 1

" EASYTAGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:easytags_resolve_links = 1

" TAGLIST
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Use_Right_Window=1
let Tlist_Auto_Open=0
let Tlist_Enable_Fold_Column=0
let Tlist_Compact_Format=1
let Tlist_WinWidth=40
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Sort_Type='name'
let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
let Tlist_Show_Menu=1
let Tlist_GainFocus_On_ToggleOpen=1
let Tlist_Close_On_Select=1
nnoremap <silent> <Leader>t :TlistToggle<CR>

" RAGTAG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <M-o>       <Esc>o
inoremap <C-j>       <Down>
let g:ragtag_global_maps = 1

" NERD_COMMENTER
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <D-/> ,c<space>
vmap <D-/> ,c<space>
imap <D-/> <C-O>,c<space>

" NERD_TREE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>d :execute 'NERDTreeToggle ' . getcwd()<CR>
let g:NERDChristmasTree = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeWinPos = 'right'
let g:NERDTreeChDirMode = 2
let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoCenter = 1
let g:NERDTreeIgnore = ['\.git$', '\.svn$', '\.jpg$', '\.gif$', '\.png$', '\.pyc', '\.DS_Store']
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeSortOrder = ['\/$', '*']
let g:NERDTreeShowLineNumbers = 1

" YANKRING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>y :YRShow<CR>
"
" skip all single-letter deletes (x)
let g:yankring_min_element_length = 2
"
" save last 50 items in history, only show last 50 in window
let g:yankring_max_history = 50
let g:yankring_max_display = 50
"
" save yankring entries across vim instances
let g:yankring_persist = 1
let g:yankring_share_between_instances = 1
"
" don't save duplicates
let g:yankring_ignore_duplicate = 1

" use a separate vertical split window that auto-closes and
" is 30 chars wide on the right side
let g:yankring_window_use_separate = 1
let g:yankring_window_use_horiz = 0
let g:yankring_window_auto_close = 1
let g:yankring_window_width = 50
let g:yankring_window_use_right = 1

" pressing <space> will increase the size of the window by 15 columns
let g:yankring_window_increment = 15

" have yankring manage Vim's numbered registers ("0-"9)
let g:yankring_manage_numbered_reg = 1

" keep the history file in the $HOME/.vim folder instead of $HOME
let g:yankring_history_dir = '$HOME/.vim'

" yankring keeps an eye on the clipboard
let g:yankring_clipboard_monitor = 1

" if something changes the default register without going through
" yankring, use the default register value rather than the top item in
" yankring's history
let g:yankring_paste_check_default_buffer = 1

" SYNTASTIC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" use signs to indicate lines with errors
" only if signs are available
if has('signs')
    let g:syntastic_enable_signs = 1
endif

" automatically open the location list when a buffer has errors
let g:syntastic_auto_loc_list = 1

" always show warnings
let g:syntastic_quiet_warnings = 0

" ignore djangohtml
let g:syntastic_disabled_filetypes = ['html', 'txt', 'text', 'tumblr', 'css']

" FUGITIVE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gc :Gcommit<CR>

" SCRATCH BUFFER
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>S :Sscratch<CR>

" BUFEXPLORER
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:bufExplorerSortBy = 'mru'
let g:bufExplorerSplitBelow = 1
let g:bufExplorerSplitRight = 1
let g:bufExplorerDefaultHelp = 0
let g:bufExplorerShowRelativePath = 1

" SENDMAIL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:sendmail_smtpserver = 'smtp.gmail.com'
let g:sendmail_port = '587'
let g:sendmail_email = 'kennethlove@gmail.com'
let g:sendmail_password = 'kenneth52'

" TUMBLR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let tumblr_email = "kennethlove@gmail.com"
let tumblr_password = "zombot76"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" FUNCTIONS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" REMAP TAB KEY
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" INSERT SNIPPET
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! InsertSnippetWrapper()
    let inserted = TriggerSnippet()
    if inserted == "\<tab>"
        return ";"
    else
        return inserted
    endif
endfunction
"inoremap ; <c-r>=InsertSnippetWrapper()<cr>

" CREATE WORDPROCESSING MODE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cabbr wp call Wp()
fun! Wp()
  set lbr
  source /Users/kennethlove/.vim/autocorrect/autocorrect.vim
  set nonumber
  set spell spelllang=en_us
endfu

" SEARCH FOR VISUAL SELECTION
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>
function! VisualSearch(direction) range
let l:saved_reg = @"
execute "normal! vgvy"

let l:pattern = escape(@", '\  /.*$^~[]')
let l:pattern = substitute(l:pattern, "\  $", "", "")

if a:direction == 'b'
    execute "normal ?" . l:pattern . "^M"
elseif a:direction == 'gv'
    call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
elseif a:direction == 'f'
    execute "normal /" . l:pattern . "^M"
endif

let @/ = l:pattern
let @" = l:saved_reg
endfunction

" STAB: SET TABSTOPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
    let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
    if l:tabstop > 0
        let &l:sts = l:tabstop
        let &l:ts = l:tabstop
        let &l:sw = l:tabstop
    endif
    call SummarizeTabs()
endfunction

function! SummarizeTabs()
    try
        echohl ModeMsg
        echon 'tabstop='.&l:ts
        echon ' shiftwidth='.&l:sw
        echon ' softtabstop='.&l:sts
        if &l:et
            echon ' expandtab'
        else
            echon ' noexpandtab'
        end
    finally
        echohl None
    endtry
endfunction

" STRIP TRAILING WHITESPACE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" DISPLAY OUTPUT OF SHELL COMMANDS IN SCRATCH BUFFER
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! -complete=shellcmd -nargs=+ Shell call s:RunShellCommand(<q-args>)
function! s:RunShellCommand(cmdline)
  let isfirst = 1
  let words = []
  for word in split(a:cmdline)
    if isfirst
      let isfirst = 0  " don't change first word (shell command)
    else
      if word[0] =~ '\v[%#<]'
        let word = expand(word)
      endif
      let word = shellescape(word, 1)
    endif
    call add(words, word)
  endfor
  let expanded_cmdline = join(words)
  botright new
  setlocal buftype=nofile bufhidden=wipe nobuflisted noswapfile nowrap
  silent execute '$read !'. expanded_cmdline
  1
endfunction

func! Cwd()
    let cwd = getcwd()
    return "e " . cwd
endfunc

func! DeleteTilSlash()
    let g:cmd = getcmdline()
    let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
    if g:cmd == g:cmd_edited
        let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
    endif
    return g:cmd_edited
endfunc

func! CurrentFileDir(cmd)
    return a:cmd . " " . expand("%:p:h") . "/"
endfunc

func! CurDir()
    let curdir = substitute(getcwd(), '/Users/kennethlove', "~/", "g")
    return curdir
endfunc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISCELLANEOUS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" This beauty remembers where you were the last time you edited the file, and returns to the same position.
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" TESTING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:makeprg_django_app = 'python\ manage.py\ test'
let g:makeprg_django_project = 'python\ manage.py\ test'
set errorformat=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

function! RunTestsForFile(args)
    if @% =~ '\.py$'
        let expandstr = '%:p:h' " dirname
        while expand(expandstr) != '/'
            let testpath = expand(expandstr)
            if len(getfperm(testpath . '/tests')) > 0 || len(getfperm(testpath . '/tests.py')) > 0
                call RunTests(expand(expandstr . ':t'), a:args)
                return
            endif
            let expandstr .= ':h'
        endwhile
    endif
    call RunTests('', a:args)
endfunction

function! RunTests(target, args)
    silent ! echo
    silent ! echo -e "\033[1;36mRunning all unit tests\033[0m"
    silent w
    if len(a:target)
        execute 'set makeprg=' . g:makeprg_django_app
    else
        execute 'set makeprg=' . g:makeprg_django_project
    endif
    exec "make! " . a:target . " " . a:args
endfunction

function! JumpToError()
    let has_valid_error = 0
    for error in getqflist()
        if error['valid']
            let has_valid_error = 1
            break
        endif
    endfor
    if has_valid_error
        for error in getqflist()
            if error['valid']
                break
            endif
        endfor
        let error_message = substitute(error['text'], '^ *', '', 'g')
        silent cc!
        exec ":sbuffer " . error['bufnr']
        call RedBar()
        echo error_message
    else
        call GreenBar()
        echo "All tests passed"
    endif
endfunction

function! RedBar()
    hi RedBar ctermfg=white ctermbg=red guibg=red
    echohl RedBar
    echon repeat(" ",&columns - 1)
    echohl
endfunction

function! GreenBar()
    hi GreenBar ctermfg=white ctermbg=green guibg=green
    echohl GreenBar
    echon repeat(" ",&columns - 1)
    echohl
endfunction

nnoremap <leader>a :call RunTests('', '')<cr>:redraw<cr>:call JumpToError()<cr>
nnoremap <leader>y :call RunTestsForFile('--failfast')<cr>:redraw<cr>:call JumpToError()<cr>
