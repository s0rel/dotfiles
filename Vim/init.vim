" Vim Config
" https://github.com/junegunn/dotfiles
" https://github.com/sjl/dotfiles
" https://github.com/terryma/dotfiles
" https://github.com/Valloric/dotfiles
" https://github.com/majutsushi/etc
" https://github.com/tpope/tpope
" https://github.com/airblade/dotvim
" https://github.com/nvie/vimrc
" https://github.com/lervag/dotvim
" https://github.com/yuttie/dot-vim/
" https://github.com/fatih/dotfiles
" https://github.com/leafgarland/vimfiles
" https://github.com/jelera/vimconfig
" https://github.com/derekwyatt/vim-config
" https://github.com/thinca/config
" https://github.com/andymass/dotfiles
" https://github.com/edkolev/dots
" https://github.com/justinmk/config
" https://github.com/mhartington/dotfiles
" https://github.com/sainnhe/dotfiles
" https://github.com/tommcdo/vimfiles
" https://github.com/tracyone/vinux
" https://github.com/jamessan/etc-vim
" https://github.com/rhysd/dogfiles
" https://github.com/zchee/.nvim
" https://github.com/kristijanhusak/neovim-config
" https://github.com/rafi/vim-config
" https://github.com/wklken/k-vim
" https://github.com/chemzqm/vimrc
" https://github.com/PegasusWang/vim-config
" https://github.com/hardcoreplayers/ThinkVim


" Ref
" https://github.com/yianwillis/vimcdoc
" https://github.com/wsdjeg/vim-galore-zh_cn
" https://mrlongx.com/index.php/2018/04/09/vim-core-list/ cpp primer
" https://github.com/vimcn/NERD_tree.vim.cnx/blob/master/doc/NERD_tree.cnx
" https://github.com/vimcn/tagbar.cnx/blob/master/tagbar.cnx
" https://github.com/vimcn/acp.vim.cnx/blob/master/doc/acp.cnx
" https://github.com/vimcn/vimwiki.vim.cnx/blob/master/doc/vimwiki.cnx





filetype off

call plug#begin('~/.vim/plugged')

Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'thinca/vim-quickrun'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'henrik/vim-indexed-search'
Plug 'brooth/far.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'easymotion/vim-easymotion'

Plug 'tpope/vim-fugitive' " :G 查看 git status
Plug 'junegunn/gv.vim', {'on': 'GV'}
Plug 'mattn/gist-vim'
Plug 'mhinz/vim-signify'

Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tyru/open-browser.vim'

Plug 'Chiel92/vim-autoformat'

Plug 'octol/vim-cpp-enhanced-highlight', { 'for': ['c', 'cpp'] }
Plug 'solarnz/thrift.vim'
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'typescript'] }
Plug 'hail2u/vim-css3-syntax'
Plug 'ap/vim-css-color'
Plug 'mattn/emmet-vim', { 'for': ['html', 'xml', 'css', 'sass', 'scss', 'less', 'php'] }

Plug 'jiangmiao/auto-pairs' " <Alt-p> 触发开关，录制宏的时候最好关闭它
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
"Plug 'ludovicchabant/vim-gutentags'
Plug 'simnalamburt/vim-mundo', {'on': 'MundoToggle'}
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/rainbow_parentheses.vim', { 'for': ['lisp', 'clojure', 'scheme'] }
Plug 'unblevable/quick-scope'
Plug 'rrethy/vim-illuminate'
Plug 'valloric/matchtagalways'
Plug 'machakann/vim-highlightedyank'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'mattesgroeger/vim-bookmarks'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'junegunn/vim-journal'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
Plug 'bling/vim-bufferline'
Plug 'godlygeek/tabular'

Plug 'yianwillis/vimcdoc'

Plug 'junegunn/seoul256.vim'
Plug 'keitanakamura/neodark.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'lifepillar/vim-solarized8'
Plug 'chriskempson/vim-tomorrow-theme'
Plug 'nequo/vim-allomancer'
Plug 'sjl/badwolf'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'gilgigilgil/anderson.vim'
Plug 'YorickPeterse/happy_hacking.vim'
Plug 'mhinz/vim-janah'
Plug 'AlessandroYorba/Despacio'


call plug#end()
filetype plugin indent on





" command
" q/                     搜索命令历史的窗口
" *                      在当前文件中搜索光标下单词
" :%s/old/new/gc         把当前文件中所有的 old 替换为 new，并提供确认（特殊字符使用反斜杠标注）
" zz                     当前行滚动到屏幕中间
" zt                     当前行滚动到屏幕顶部
" zb                     当前行滚动到屏幕尾部
" r                      替换当前字符
" R                      进入替换模式，直至 Esc 退出
" s                      替换字符（删除光标处字符，并进入插入模式，前可接数量）
" S                      替换行（删除当前行，并进入插入模式，前可接数量）
" e                      移动到下一个单词的末尾
" ge                     移动到上一个单词的末尾
" :w !sudo tee % sudo    以后保存当前文件
" qa                     开始宏，并把它保存到寄存器 a 中
" q                      结束录制宏
" @a                     播放寄存器 a 中的宏
" s@@                    播放上一个宏
" '<                     跳到上次可视模式选择区域的开始
" '>                     跳到上次可视模式选择区域的结束
" g~                     反转大小写，后面需要跟文本对象
" g Ctrl-g               统计文件的信息
" Ctrl-]                 跳转到当前光标下的单词的相关主题或函数的定义
" Ctrl-o                 往回跳
" Ctrl-i                 往前跳，与 Ctrl-o 实现的功能相反
" Ctrl-^                 在文件间跳转
" Ctrl-g                 在选择模式和可视模式中切换
" o                      在可视模式下，切换高亮选区的活动端
" Ctrl-e                 插入模式下退出补全
" Ctrl-a                 插入模式下插入上一次插入的内容
" Ctrl-@                 完成和 Ctrl-a 一样的事情，但随后会退出插入模式 
" Ctrl-w                 插入模式下删除一个单词
" Ctrl-u                 插入模式下，删除光标之前的文本至行首，但缩进会保留
" Ctrl-<-                插入模式下，左移一个单词
" Ctrl-->                插入模式下，右移一个单词，插入模式下其他的特殊键可以使用 :help ins-special-special 查看
" :bro[wse] oldfiles     查看最近打开过的文件
" :verbose imap <tab>    显示映射
" :set filetype?         显示 vim 当前把所编辑的文件识别为什么类型
" :help CTRL-A           查看普通模式下关于 Ctrl-a 的帮助文档
" :help i_CTRL-H         查看插入模式下关于 Ctrl-h 的帮助文档
" :help :s               查看 :s 命令的帮助文档，帮助文档的使用方法可查看用户手册 2.8 节的内容 :help 2.8
" :help text-object      查看所有的文本对象
" :options               给出一个选项列表，并对每个选项提供一行注释
" <Leader>egijquvwxy     可用

" 一些特殊的标记，使用 ' 进行跳转
" '                      跳转前的光标位置
" "                      最后编辑的光标位置
" [                      最后修改的开始位置
" ]                      最后修改的结束位置








" 启用 matchit
runtime! macros/matchit.vim
" 禁用以下插件
let g:loaded_netrw = 1
let g:loaded_netrwFileHandlers = 1
let g:loaded_netrwPlugin = 1
let g:loaded_netrwSettings = 1
let g:loaded_2html_plugin = 1
let g:loaded_getscriptPlugin = 1
let g:loaded_gzip = 1
let g:loaded_logipat = 1
let g:loaded_rrhelper = 1
let g:loaded_spellfile_plugin = 1
let g:loaded_tarPlugin = 1
let g:loaded_vimballPlugin = 1
let g:loaded_zipPlugin = 1
let g:python3_host_prog = '/usr/local/bin/python3'




if !has('nvim')
    " 取消兼容模式
    set nocompatible
    " 设置默认编码
    set encoding=utf-8
endif
" 内部工作编码
scriptencoding utf-8
" 文件默认编码
set fileencoding=utf-8
" 打开文件时自动尝试下面顺序的编码
set fileencodings=utf-8,ucs-bom,gbk,cp936,gb2312,gb18030,euc-jp,latin1
" 标题栏显示文件名
set title
" 设置界面显示语言和消息为英文
let $LANG = 'en'
set langmenu=en
" 修改 Leader 键为空格键，之后插入模式下的映射不要使用 Leader 键，否则会出现卡顿
let g:mapleader = "\<Space>"
let g:maplocalleader = "\<Space>"
" 启用鼠标
set mouse=a
" 设置 Backspace 的行为
set backspace=indent,eol,start
" 显示行号
set number
" 显示光标位置
set ruler
" 关闭自动备份
set nobackup
set noswapfile
" 保存 undo 文件到 ~/.vim/undo
set undofile
set undodir=~/.vim/undo
set undolevels=1000
" 在未保存时允许切换缓冲区
set hidden
" 开启语法高亮，如果超过 8000 行则关闭
syntax enable
syntax on
set synmaxcol=8000
" 允许载入插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 自动检测文件类型
filetype plugin indent on
" 启用 Vim 自带的 omni 补全
set omnifunc=syntaxcomplete#Complete
" 补全选项
set completeopt=preview,menuone,longest
" 选中第一个但不插入
set completeopt+=noinsert
" 不从 tag 中获取补全
set complete-=t
" 设置命令行模式下的最大历史记录数
set history=2000
" 设置以 UNIX 的格式保存文件
set fileformat=unix
" 高亮当前行
set cursorline
" 高亮当前列
" set cursorcolumn
" 始终显示状态栏
set laststatus=2
" 只在需要时重绘窗口
set lazyredraw
" 命令行补全参数
set wildmenu
" 设置 Tab 键为 4 个空格的缩进
set tabstop=4
" 将 Tab 自动转化成空格(需要输入真正的 Tab 键时，使用 <C-v> + Tab)，set noet 快速关闭这个选项
set expandtab
" 退格键一次删掉 4 个空格
set smarttab
" 使得部分跳转操作不自动移到行首
set nostartofline
" 使用 Rg 替换默认的grep
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case
" 实时搜索
set incsearch
" 高亮搜索结果，:noh 取消高亮
set hlsearch
" 搜索时忽略大小写
set ignorecase
" 有一个以上（包括一个）大写字母时，仍对大小写敏感
set smartcase
" 允许回绕搜索
set wrapscan
" 补全时不要把大写改成小写
set noinfercase
" 打开正则表达式
set magic
" 搜索模式设置为更先进的正则规则
nnoremap / /\v
vnoremap / /\v
" 设置忽略的文件
set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,target/**,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*azw3,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android
" 高亮匹配的括号
set showmatch
" 高亮括号匹配的时间
 set matchtime=2
" 显示当前所处模式
set showmode
" 设置右下角显示当前光标位置
set showcmd
" 终端开启 256 色支持
set t_Co=256
" 让终端的颜色显示和 GUI 一致
set termguicolors
" 设置主题
set background=dark
colorscheme seoul256
" 自动折行
set wrap
let &showbreak = '↪ '
" 设置光标键跨行
set whichwrap+=<,>,h,l
" 允许光标出现在最后一个字符的后面
 set virtualedit=block,onemore
" 当文件被改动时自动载入
set autoread
" 针对某些指令自动保存，具体查看 :help autowrite 和 :help autowriteall
set autowrite
" 当前目录随着被编辑文件的改变而改变
set autochdir
" 关闭输入错误的提示音
set noerrorbells
set novisualbell
set vb t_vb=
set tm=500
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 上下移动光标时光标上方和下方至少保留 2 行，不足时发生自动滚动
set scrolloff=2
" 当光标到达屏幕的上下边缘时，自动滚动 5 行
"set scrolljump=5
" 开启自动缩进，智能缩进
set autoindent
set cindent
set copyindent
set smartindent
" 使用 4 个空格宽度的缩进
set shiftwidth=4
" 在第 80 个字符处自动插入换行符，设置为 0 可以避免一个一个段落被拆分
" set textwidth=80
" 第 80 个字符处显示分隔符
set colorcolumn=80
" 可视化分隔符
set listchars=tab:▸\ ,trail:.,extends:>,precedes:<
set list
" 水平或者竖直分割窗口后，光标放置在新窗口中
set splitbelow
set splitright
" 分割窗口时总是按照相同的大小进行分割
set equalalways
" 快速分割窗口
nnoremap ss :split<CR>
nnoremap vv :vsplit<CR>
" 终端窗口发生变化时，自动调整分割的窗口的大小
autocmd VimResized * :execute "normal \<C-w>="
" <Leader>z 最大化/恢复当前窗口，也支持 nerdtree 和 defx
function! s:ZoomToggle() abort
    if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
    else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
    endif
endfunction
command! ZoomToggle call s:ZoomToggle()
nnoremap <silent> <Leader>z :ZoomToggle<CR>
" 微调分屏窗口
nnoremap w[ :vertical resize -5<CR>
nnoremap w] :vertical resize +5<CR>
nnoremap w- :resize -5<CR>
nnoremap w= :resize +5<CR>
" 更快的分屏移动
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l
" 使用 <S-DOWN> 和 <S-UP> 快速滚动另一个分屏 5 行
inoremap <S-DOWN> <Esc><C-w>w5<C-e><C-w><C-w>`"A
inoremap <S-UP> <Esc><C-w>w5<C-y><C-w><C-w>`"A
nnoremap <S-DOWN> <Esc><C-w>w5<C-e><C-w><C-w>`"
nnoremap <S-UP> <Esc><C-w>w5<C-y><C-w><C-w>`"
" 禁用代码折叠
set nofoldenable
" 合并两行中文时，不在中间加空格
set formatoptions+=B
" 在合并两行时在 '.', '?' 和 '!' 那里不插入两个空白字符
set nojoinspaces
" 设置显示消息的列数
set cmdheight=2
" 设置命令行模式窗口的默认高度
set cmdwinheight=15
" 配置 diff 算法
set diffopt+=algorithm:patience
" 根据是否发生了 wrap，对 k 和 j 进行映射
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
" 在 buffer、tab、quickfix 和 location list 之间快速跳转
nnoremap ]b :bnext<CR>
nnoremap [b :bprevious<CR>
nnoremap ]t :tabnext<CR> " gt 切换到下一个Tab gT 反向切换
nnoremap [t :tabprevious<CR>
nnoremap ]q :cnext<CR>
nnoremap [q :cprevious<CR>
nnoremap ]l :lnext<CR>
nnoremap [l :lprevious<CR>
" <Leader>c 保存并关闭当前 buffer
nnoremap <Leader>c <Esc>:update<CR>:bdelete<CR>
" <Leader>tc 关闭当前 tab
nnoremap <Leader>tc <Esc>:update<CR>:tabclose<CR>
" <Leader>qc 关闭 quickfix 和 location list
nnoremap <Leader>qc :cclose<BAR>lclose<CR>
" 更快的 Tab 页切换
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt
nnoremap <Leader>7 7gt
nnoremap <Leader>8 8gt
nnoremap <Leader>9 9gt
nnoremap <Leader>0 :tablast<CR>
" <leader>tt 在当前 Tab 页和上一个 Tab 页之间切换
let g:last_active_tab = 1
nnoremap <silent> <leader>tt :execute 'tabnext ' . g:last_active_tab<CR>
autocmd TabLeave * let g:last_active_tab = tabpagenr()
" 使用 X 录制/停止录制宏
nnoremap X q
" q 退出不保存
nnoremap q :q!<CR>
" Q 不保存，强制退出当前所有 buffer，默认的 Q 对应的是 Ex 模式
nnoremap Q :qall!<CR>
" <C-l> 高亮/取消高亮搜素结果并重绘屏幕，<C-l> 默认就是重绘屏幕
nnoremap <silent> <C-l> <Esc>:set hlsearch! hlsearch?<CR><C-l>
" 找到 git 合并中冲突的地方
nmap <Leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>
" 设置插入模式和可视模式下的退出键
inoremap jj <Esc>:update<CR>
vnoremap jj <Esc>
" 全选并复制到系统剪贴板
nnoremap <Leader>a <Esc>ggVG"+y<Esc>
" gV 选中刚刚编辑或粘贴的内容，gv 选中上一个选中的区域
nmap gV `[v`]
" Y 复制，P 粘帖
map Y "+y
map P "+p
if has('nvim')
    " 设置剪贴板模式
    set clipboard+=unnamedplus
    " 实时预览替换结果
    set inccommand=nosplit
endif
" 快捷缩进
vnoremap < <v
vnoremap > >v
" 可视模式下，J 和 K 上下移动选中的区域
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
" & 重复上一次的替换操作，作用域为一行
nnoremap & :&&<CR>
xnoremap & :&&<CR>
" <Esc> 退出终端模式
"tnoremap <Esc> <C-\><C-n>
" T 水平分屏打开终端，VT 竖直分屏打开终端，并自动进入插入模式
command! -nargs=* T split | startinsert | terminal <args>
command! -nargs=* VT vsplit | startinsert | terminal <args>
" 每次进入终端都自动进入插入模式
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd TermOpen * setlocal nonumber nowrap
" 补全路径时，以下后缀名的优先级较低
set suffixes=.pdf,.bak,~,.swp,.o,.info,.aux,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
" 打开一个文件自动前往当前 buffer 所在目录
autocmd BufEnter * silent! lcd %:p:h
"nnoremap cd :lcd %:p:h<BAR>pwd<CR>
"nnoremap cu :lcd ..<BAR>pwd<CR>
" 打开一个文件自动定位到上一次退出时的位置
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" 强制对某些文件的 filetype 进行纠正
augroup FileTypeGroup
    autocmd!
    autocmd BufNewFile,BufRead *.cc setlocal filetype=cpp
    autocmd BufNewFile,BufRead *.sql setlocal filetype=mysql
    autocmd BufRead,BufNewFile *.es6 setfiletype javascript
    autocmd BufNewFile,BufRead *.tex setlocal filetype=tex
    " 水平分屏打开帮助文档
    " autocmd FileType help wincmd L
    autocmd FileType make setlocal noexpandtab
    autocmd BufNewFile,BufRead CMakeLists.txt setlocal filetype=cmake
    " quickfix 窗口自动折行
    autocmd FileType qf setlocal wrap linebreak
augroup END
" 文件在外部发生更改时，自动更新内容
augroup auto_refresh
    autocmd!
    autocmd FocusGained,BufEnter,CursorHold,CursorHoldI *
        \ if mode() != 'c' |
        \   checktime |
        \ endif
    autocmd FileChangedShellPost *
        \ echohl WarningMsg |
        \ echo "File changed on disk. Buffer reloaded." |
        \ echohl None
augroup END
" 针对下列扩展名的文件添加 <> 匹配
autocmd BufNewFile,BufRead *.html,*.xml,*.jsp setlocal matchpairs+=<:>
" K 搜索文档
autocmd FileType vim setlocal keywordprg=:help
autocmd FileType c,cpp setlocal keywordprg=:Man
" 设置字典
set dictionary+=/usr/share/dict/words
" 针对下列扩展名的文件添加字典单词补全
autocmd BufNewFile,BufRead *.markdown,*.md,*.org,*.rst,*.tex,*.txt,*wiki setlocal complete+=k
" 对于二进制文件自动调用 xxd
autocmd BufReadPost * if &bin | silent! exe '%!xxd' | setlocal filetype=xxd | endif
autocmd BufWritePre * if &bin | silent! exe '%!xxd -r' | endif
autocmd BufWritePost * if &bin | silent! exe '%!xxd' | setlocal nomodified | endif
" <Leader>sc 拼写检查开关
nnoremap <Leader>sc :setlocal spell!<CR>
" 设置 c，c++，java，python 的保持格式为 UNIX
autocmd BufWritePre *c,*h,*cc,*.cpp,*.hpp,*py,*java setlocal fileformat=unix
" 在打开的 buffer 中搜索
nnoremap <leader>bs :cex []<BAR>bufdo vimgrepadd @@g %<BAR>cw<s-left><s-left><right>
" :Root 进入 git 仓库的根目录
function! s:root()
    let root = systemlist('git rev-parse --show-toplevel')[0]
    if v:shell_error
        echo "Not in git repo"
    else
        execute 'lcd' root
        echo 'Changed directory to: '.root
    endif
endfunction
command! Root call s:root()
" :A 命令在头文件和实现文件中跳转，:AV 分屏打开
function! s:a(cmd)
    let name = expand('%:r')
    let ext = tolower(expand('%:e'))
    let sources = ['c', 'cc', 'cpp', 'cxx']
    let headers = ['h', 'hh', 'hpp', 'hxx']
    for pair in [[sources, headers], [headers, sources]]
        let [set1, set2] = pair
        if index(set1, ext) >= 0
            for h in set2
                let aname = name.'.'.h
                for a in [aname, toupper(aname)]
                    if filereadable(a)
                        execute a:cmd a
                        return
                    end
                endfor
            endfor
        endif
    endfor
endfunction
command! A call s:a('e')
command! AV call s:a('botright vertical split')
" :Todo 递归搜索包含 TODO 和 FIXME 的内容
function! s:todo() abort
    let entries = []
    for cmd in ['git grep -niI -e TODO -e FIXME -e XXX 2> /dev/null',
            \ 'grep -rniI -e TODO -e FIXME -e XXX * 2> /dev/null']
        let lines = split(system(cmd), '\n')
        if v:shell_error != 0 | continue | endif
        for line in lines
            let [fname, lno, text] = matchlist(line, '^\([^:]*\):\([^:]*\):\(.*\)')[1:3]
            call add(entries, { 'filename': fname, 'lnum': lno, 'text': text })
        endfor
        break
    endfor
    if !empty(entries)
        call setqflist(entries)
        copen
    endif
endfunction
command! Todo call s:todo()
" 添加额外的可以的高亮的关键字
if has("autocmd")
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|WARN\|DONE\|ABORTED\|BUG\|HACK\)')
    autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|INFO\|IDEA\|NOTICE\)')
endif
" gb 打印光标下数字的二进制数值，ga 打印光标下字符的十进制（ASCII 码）、十六进制和八进制值
function! s:echoBinary()
    echo printf("%08b", expand('<cword>'))
endfunction
nnoremap <silent> gb :<C-u>call <SID>echoBinary()<CR>
" 访问的目录不存在的话提示创建
autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
function! s:auto_mkdir(dir, force) abort
    if !isdirectory(a:dir) && (a:force ||
                \    input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
        " call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
        call mkdir(a:dir, 'p')
    endif
endfunction
function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction
function! StatuslineGit()
    let l:branchname = GitBranch()
    return strlen(l:branchname) > 0?l:branchname:''
endfunction
function! FileSize()
    let bytes = getfsize(expand('%:p'))
    if (bytes >= 1024)
        let kbytes = bytes / 1024
    endif

    if (exists('kbytes') && kbytes >= 1000)
        let mbytes = kbytes / 1000
    endif

    if bytes <= 0
        return '0B'
    endif

    if (exists('mbytes'))
        return mbytes . 'MB'
    elseif (exists('kbytes'))
        return kbytes . 'KB'
    else
        return bytes . 'B'
    endif
endfunction
" 状态栏左侧显示 buffer 编号，文件更改标志，文件大小，文件格式
set statusline=
set statusline+=%F\ %{FileSize()}\ [%n]
set statusline+=%m%r%h\ [%{&ff}\ \|\ %{&fileencoding?&fileencoding:&encoding}]
" 状态栏右侧显示 Git 分支信息，当前所在的位置，光标下字符的 ASCII 码值及对应的十六进制值
set statusline+=%=
set statusline+=[%{StatuslineGit()}]
set statusline+=\ [%l,%v\ \|\ %l/%L\ \|\ %p%%]\ [%b\ \|\ 0x%B]
" <C-d> 触发背景透明开关
function! TransparentToggle()
    if &background=="dark"
        set background=
        hi Normal guibg=NONE ctermbg=NONE
        hi EndOfBuffer guibg=NONE ctermbg=NONE
    else
        set background=dark
    endif
    redraw!
endfunction
command! TransparentToggle call TransparentToggle()
nnoremap <C-d> :TransparentToggle<CR>
inoremap <C-d> <Esc>:TransparentToggle<CR>`"A
" <CR> 完成补全
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" 补全结束或离开插入模式时，关闭预览窗口
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" 插入模式和命令模式下常用快捷键与 Emacs 保持一致
inoremap <C-a> <Home>
inoremap <expr><C-e> pumvisible() ? "\<C-e>" : "\<End>"
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
" 自动插入文件头
function! AddHeader()
    if expand("%:e") == 'sh'
        call setline(1,"#!/usr/bin/env/ sh")
    elseif expand("%:e") == 'py'
        call setline(1,"#!/usr/bin/env python3")
        call setline(2,"# -*- coding: utf-8 -*-")
    elseif expand("%:e") == 'h' || expand("%:e") == 'hpp'
        call setline(1, "#ifndef ".toupper(expand("%:r"))."_H")
        call setline(2, "#define ".toupper(expand("%:r"))."_H")
        call setline(3,"")
        call setline(4, "#endif")
    elseif expand("%:e") == 'java'
        call setline(1,"public class ".expand('%:t:r')." {")
        call setline(2, "}")
    endif
    autocmd BufNewFile * normal G
endfunction
autocmd BufNewFile *h,*.hpp,*.sh,*.py,*.java call AddHeader()
" 在 tmux 里面发送文本内容
function! s:tmux_send(content, dest) range
    let dest = empty(a:dest) ? input('To which pane? ') : a:dest
    let tempfile = tempname()
    call writefile(split(a:content, "\n", 1), tempfile, 'b')
    call system(printf('tmux load-buffer -b vim-tmux %s \; paste-buffer -d -b vim-tmux -t %s',
        \ shellescape(tempfile), shellescape(dest)))
    call delete(tempfile)
endfunction
function! s:tmux_map(key, dest)
    execute printf('nnoremap <silent> %s "tyy:call <SID>tmux_send(@t, "%s")<cr>', a:key, a:dest)
    execute printf('xnoremap <silent> %s "ty:call <SID>tmux_send(@t, "%s")<cr>gv', a:key, a:dest)
endfunction
call s:tmux_map('<leader>tt', '')
call s:tmux_map('<leader>th', '.left')
call s:tmux_map('<leader>tj', '.bottom')
call s:tmux_map('<leader>tk', '.top')
call s:tmux_map('<leader>tl', '.right')
call s:tmux_map('<leader>ty', '.top-left')
call s:tmux_map('<leader>to', '.top-right')
call s:tmux_map('<leader>tn', '.bottom-left')
call s:tmux_map('<leader>t.', '.bottom-right')
" 建立命令模式下的缩写
function! SetupCommandAbbrs(from, to)
    exec 'cnoreabbrev <expr> '.a:from
        \ .' ((getcmdtype() ==# ":" && getcmdline() ==# "'.a:from.'")'
        \ .'? ("'.a:to.'") : ("'.a:from.'"))'
endfunction
call SetupCommandAbbrs('DO', 'Fardo')





"*****************************************************************************"
"                               seoul256
"*****************************************************************************"
let g:seoul256_background = 238
let g:seoul256_srgb = 1

"*****************************************************************************"
"                               neodark
"*****************************************************************************"
let g:neodark#background = '#202020'
let g:neodark#use_256color = 1
let g:lightline = {}
let g:lightline.colorscheme = 'neodark'

"*****************************************************************************"
"                               gruvbox
"*****************************************************************************"
let g:gruvbox_contrast_dark = 'soft'
" 注释不要斜体
let g:gruvbox_italicize_comments = 0

"*****************************************************************************"
"                               auto-format
"*****************************************************************************"
let g:autoformat_autoindent = 1
let g:autoformat_retab = 1
let g:autoformat_remove_trailing_spaces = 1
" 保存前自动格式化 *c,*h,*cc,*.cpp,*.hpp,*py,*java,*json 文件
augroup format
    autocmd!
    autocmd BufWritePre *c,*h,*cc,*.cpp,*.hpp,*py,*java,*json :Autoformat
augroup END
" 对于 markdown 不去除多余的空白
autocmd FileType *markdown,*md let b:autoformat_remove_trailing_spaces = 0
" 对于 zsh 和 bash 不自动缩进
autocmd FileType zsh,bash let b:autoformat_autoindent=0

"*****************************************************************************"
"                               editorconfig
"*****************************************************************************"
" 对于 fugitive 和远程文件不使用 editorconfig
let g:EditorConfig_exclude_patterns = ['fugitive://.\*', 'scp://.\*']

"*****************************************************************************"
"                               surround
"*****************************************************************************"
" "Hello world!" + cs"' -> 'Hello world!'
" "Hello world!" + ds" -> Hello world!
" Hello world! + ysiw} -> {Hello} world!
" 可视模式下，对于选中内容，用 S 添加括号，另外左边的括号会加空格，右边的不会
" https://gist.github.com/wilon/ac1fc66f4a79e7b0c161c80877c75c94

"*****************************************************************************"
"                               commentary
"*****************************************************************************"
" gcc 注释或者取消注释一行，gc 注释或者取消注释选中区域
" 为 Python 和 Shell 等添加注释
autocmd FileType python,shell set commentstring=#\ %s
" 修改 sql，Java，C 和 C++ 的注释风格
autocmd FileType sql setlocal commentstring=--\ %s
autocmd FileType java,c,cpp set commentstring=//\ %s

"*****************************************************************************"
"                               far
"*****************************************************************************"
let g:far#source = 'rg'
" <Leader>s 将光标下的单词加入 Far 中
nnoremap <Leader>s :Far <C-r><C-w>
" :Far foo bar **/*.py 预览将被替换的目录下的所有 python 文件
" :Fardo 执行之前的替换任务，或者输入 :DO
" :Refar 重设替换任务
" :F 单纯的搜索预览

"*****************************************************************************"
"                               indexed-search
"*****************************************************************************"
" 默认关闭，禁止对消息高亮
let g:indexed_search_mappings = 0
let g:indexed_search_colors = 0
" + 统计光标下单词的出现次数
nnoremap + :let @/='\V\<'.escape(expand('<cword>'), '\').'\>'<CR>:ShowSearchIndex<CR>
" * # 搜索选中的内容
function! s:VSetSearch()
    let temp = @@
    norm! gvy
    let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
    let @@ = temp
endfunction
vnoremap * :<C-u>call <SID>VSetSearch()<CR>//<CR>:ShowSearchIndex<CR>
vnoremap # :<C-u>call <SID>VSetSearch()<CR>??<CR>:ShowSearchIndex<CR>
vnoremap + :<C-u>call <SID>VSetSearch()<CR>:ShowSearchIndex<CR>
nnoremap n n:ShowSearchIndex<CR>
nnoremap N N:ShowSearchIndex<CR>

"*****************************************************************************"
"                               tagbar
"*****************************************************************************"
" 显式指定 ctags
let g:tagbar_ctags_bin = '/usr/bin/ctags'
" <Leader>k 触发开关，设置宽度为 30
let g:tagbar_width = 30
nmap <Leader>k :TagbarToggle<CR>
" 开启自动预览(随着光标在标签上的移动，顶部会出现一个实时的预览窗口)
let g:tagbar_autopreview = 1
" 关闭排序,即按标签本身在文件中的位置排序
let g:tagbar_sort = 0
" 显示访问权限
let g:tagbar_show_visibility = 1

"*****************************************************************************"
"                               Mundo
"*****************************************************************************"
" <Leader>m 触发
nnoremap <Leader>m :MundoToggle<CR>
let g:mundo_width = 30
let g:mundo_preview_height = 20
" 恢复文件后自动关闭
let g:mundo_close_on_revert = 1
let g:mundo_mappings = {
    \ '<CR>': 'preview',
    \ 'o': 'preview',
    \ 'j': 'move_older',
    \ 'k': 'move_newer',
    \ '<down>': 'move_older',
    \ '<up>': 'move_newer',
    \ 'J': 'move_older_write',
    \ 'K': 'move_newer_write',
    \ 'gg': 'move_top',
    \ 'G': 'move_bottom',
    \ 'P': 'play_to',
    \ 'd': 'diff',
    \ 'i': 'toggle_inline',
    \ '/': 'search',
    \ 'n': 'next_match',
    \ 'N': 'previous_match',
    \ 'p': 'diff_current_buffer',
    \ 'r': 'diff',
    \ '?': 'toggle_help',
    \ 'q': 'quit',
\ '<2-LeftMouse>': 'mouse_click' }

"*****************************************************************************"
"                               NERDTree
"*****************************************************************************"
" :Bookmark 设置当前目录为书签，:ClearBookmarks、:ClearAllBookmarks 删除书签，
" P 回到根目录，p 回到父目录，K 到达第一个子节点，J 到达最后一个子节点
" O 打开当前目录及其所有子目录，X 关闭当前目录及其所有子目录，C 设置当前目录为新的根目录，r 刷新当前目录及其所有子目录，
" I 是否显示隐藏文件，A 是否最大化 NERD tree 窗口，m 打开文件目录操作菜单，q 退出
" <C-w>h、<C-w>l 在 NERDTree 页面和 buffer 页面切换，/ 在 NERDTree 页面搜索
let NERDTreeAutoCenter = 1
" 显示书签
let NERDTreeShowBookmarks = 1
" <Leader>n 触发，设置宽度为 30
map <Leader>n :NERDTreeToggle<CR>
let NERDTreeWinSize = 30
" 高亮当前行
let NERDTreeHighlightCursorline = 1
" 从 NERDTree 打开文件后不自动关闭 NERDTree
let NERDTreeQuitOnOpen = 0
" 不显示隐藏文件
let g:NERDTreeShowHidden = 0
" 不使用 wildignore 中的设置，自定义忽略的文件和目录
let NERDTreeRespectWildIgnore = 0
let NERDTreeIgnore = ['\.pyc$', '^__pycache__$', '\.idea$', '\~$', '\.swp$']
" 只剩下 NERDTree 窗口未关闭时自动关闭它
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 自定义展开和折叠的标志
"let g:NERDTreeDirArrowExpandable='▷'
"let g:NERDTreeDirArrowCollapsible='▼'

"*****************************************************************************"
"                               nerdtree-git-plugin
"*****************************************************************************"
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
\ }

"*****************************************************************************"
"                               rainbow_parentheses
"*****************************************************************************"
" 最大高亮 10 级
let g:rainbow#max_level = 10
let g:rainbow#pairs = [['(', ')'], ['[', ']']]
" 不使用这个颜色
let g:rainbow#blacklist = [233, 234]
" 对于 lisp,clojure,scheme 自动启用
augroup rainbow_lisp
    autocmd!
    autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

"*****************************************************************************"
"                               quick-scope
"*****************************************************************************"
let g:qs_enable = 1
" 对于 f，F，t 和 T 都提供高亮
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
" 超过 100 个字符的行关闭该功能
let g:qs_max_chars= 120

"*****************************************************************************"
"                               illuminate
"*****************************************************************************"
" 设置默认的延迟时间
let g:Illuminate_delay = 250
" 设置不高亮的组
let g:Illuminate_ftHighlightGroups = {
    \ 'vim:blacklist': ['vimVar', 'vimString', 'vimLineComment',
    \ 'vimFuncName', 'vimFunction', 'vimUserFunc', 'vimFunc']
\ }

"*****************************************************************************"
"                               MatchTagAlways
"*****************************************************************************"
" <Leader>% 跳转到最近的标签
nnoremap <Leader>% :MtaJumpToOtherTag<CR>
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}
let g:mta_set_default_matchtag_color = 1

"*****************************************************************************"
"                               Indent Guides
"*****************************************************************************"
" 默认自启，<Leader>ig 触发开关
let g:indent_guides_enable_on_vim_startup = 1
" 使用 1 个字符的缩进宽度
let g:indent_guides_guide_size = 1
" 从第 2 级开始缩进
let g:indent_guides_start_level = 2
" 以下文件类型不提供缩进提示
let g:indent_guides_exclude_filetypes = ['help', 'nerdtree', 'defx', 'nnn']

"*****************************************************************************"
"                               limelight
"*****************************************************************************"
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_default_coefficient = 0.5
" 显示上下文
let g:limelight_paragraph_span = 1
let g:limelight_priority = -1

"*****************************************************************************"
"                               goyo
"*****************************************************************************"
function! s:goyo_enter()
    if has('gui_running')
        set fullscreen
        set background=light
        set linespace=7
    elseif exists('$TMUX')
        silent !tmux set status off
    endif
    Limelight
    let &l:statusline = '%M'
    hi StatusLine ctermfg=red guifg=red cterm=NONE gui=NONE
endfunction
function! s:goyo_leave()
    if has('gui_running')
        set nofullscreen
        set background=dark
        set linespace=0
    elseif exists('$TMUX')
        silent !tmux set status on
    endif
    Limelight!
endfunction
autocmd! User GoyoEnter nested call <SID>goyo_enter()
autocmd! User GoyoLeave nested call <SID>goyo_leave()
nnoremap <Leader>l :Goyo<CR>
xnoremap <Leader>l :Goyo<CR>

"*****************************************************************************"
"                               cpp-enhanced-highlight
"*****************************************************************************"
" 高亮类，成员函数，标准库和模板
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1
" 文件较大时使用下面的设置高亮模板速度较快，但会有一些小错误
"let g:cpp_experimental_template_highlight = 1

"*****************************************************************************"
"                               fzf
"*****************************************************************************"
if has('nvim') || has('gui_running')
    let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif
" :Rg 调用 Rg 进行搜索 :Colors 显示本机安装的所有主题 :Snippets 显示当前文件类型的 snippet
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-x': 'split',
    \ 'ctrl-v': 'vsplit' }
" <Leader>f 在当前目录搜索文件
nnoremap <silent> <Leader>f :Files<CR>
" <Leader>b 切换 buffer 中的文件
nnoremap <silent> <Leader>b :Buffers<CR>
" <Leader>p 在当前所有加载的 buffer 中搜索包含目标词的所有行，:BLines 只在当前 buffer 中搜索，搜索结果较差禁用
"nnoremap <silent> <Leader>p :Lines<CR>
" <Leader>h 在 Vim 打开的历史文件中搜索，相当于是在 MRU 中搜索，:History：命令历史查找
nnoremap <silent> <Leader>h :History<CR>
" <Leader>` 搜索所有标记
"nnoremap <silent> <Leader>` :Marks<CR>
let g:fzf_tags_command = 'ctags -R'
" <Leader>t 在当前所有加载的 buffer 中列出函数列表，:Tags 在当前项目中搜索
nnoremap <silent> <Leader>t :BTags<CR>
" 调用 Rg 进行搜索，包含隐藏文件
function! RipgrepFzf(query, fullscreen)
    let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
    let initial_command = printf(command_fmt, shellescape(a:query))
    let reload_command = printf(command_fmt, '{q}')
    let options = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
    let options = fzf#vim#with_preview(options, 'right', 'ctrl-/')
    call fzf#vim#grep(initial_command, 1, options, a:fullscreen)
endfunction
command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
command! -bang -nargs=* Rg
    \ call fzf#vim#grep(
    \ "rg --column --line-number --no-heading --color=always --smart-case ---hidden ".shellescape(<q-args>), 1,
    \ fzf#vim#with_preview('right', 'ctrl-/'), <bang>0)
" 调用 Rg 进行搜索光标下的单词
nnoremap <Leader>/ :Rg<Space><C-r><C-w><CR>

"*****************************************************************************"
"                               EasyMotion
"*****************************************************************************"
" 使用默认的映射
let g:EasyMotion_do_mapping = 1
" 大小写敏感
let g:EasyMotion_smartcase = 1
" <Leader><Leader>s 单字符搜索跳转到搜索的字符，<Leader><Leader>w 跳转到单词开头
" <Leader><Leader>f 双字符搜索跳转到搜索的字符
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f2)

"*****************************************************************************"
"                               ale
"*****************************************************************************"
" 始终开启标志列
let g:ale_sign_column_always = 0
let g:ale_set_highlights = 0
" 自定义 error 和 warning 图标
let g:ale_sign_error = '🔥'
let g:ale_sign_warning = '⚡'
" 显示 Linter 名称,出错或警告等相关信息
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" 普通模式下，[e 前往上一个错误或警告，]e 前往下一个错误或警告
nmap <silent> ]e <Plug>(ale_next_wrap)
nmap <silent> [e <Plug>(ale_previous_wrap)
" 普通模式下文字改变以及离开插入模式的时候才运行 Linter
"let g:ale_lint_on_text_changed = 'normal'
"let g:ale_lint_on_enter = 1
let g:ale_java_javac_options = '-encoding UTF-8  -J-Duser.language=en'
" 指定 Linter
let g:ale_linters = {
    \ 'c': ['clang'],
    \ 'cpp': ['clang'],
    \ 'python': ['flake8', 'mypy', 'pylint'],
    \ 'lua': ['luac'],
    \ 'go': ['gofmt', 'golint', 'go vet'],
    \ 'rust': ['cargo'],
    \ 'java': ['javac'],
    \ 'javascript': ['eslint'],
    \ 'javascript.jsx': ['eslint'],
    \ 'typescript': ['tslint'],
    \ 'typescript.jsx': ['tslint'],
    \ 'html': ['htmlhint'],
    \ 'css': ['stylelint'],
    \ 'scss': ['stylelint'],
    \ 'less': ['stylelint'],
    \ 'markdown': ['mdl'],
    \ 'vim': ['vint'],
\ }
" 去除文件末尾的空行和行尾的空格，对于 markdown 文件最好不要用 vim 编辑
"let g:ale_fixers = {
"    \   '*': ['remove_trailing_lines', 'trim_whitespace']
"\}
"let g:ale_fix_on_save = 1
" 禁用 ALE 的代码补全
let g:ale_completion_enabled = 0

"*****************************************************************************"
"                               coc
"*****************************************************************************"
" 设置补全的源
let g:coc_global_extensions = ['coc-java', 'coc-python', 'coc-snippets', ]
"    \'coc-git', 'coc-rls', 'coc-emoji', 'coc-json', 'coc-html', 'coc-css',]
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
" Tab 选择和补全，<S-TAB> 反向选择和补全
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" <CR> 展开 snippets
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif
" 针对 Java 关闭补全
"autocmd FileType java let b:coc_suggest_disable = 1
" 代码跳转
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"*****************************************************************************"
"                               UltiSnips
"*****************************************************************************"
" cpp: incc, fori, cl, cla, fnc, map, vector, tp, cin, cout
" java: sleep, cl, cle, co, cc, map, list, setter, getter
" python: #!, ifmain, with, class, def, deff, defs, ife, try, trye, tryf
" 插入模式下直接通过 <tab> 键来触发 UltiSnips 的代码块补全
"let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsExpandTrigger = "<C-z>"
" 列出所有 snippets，和分屏的快捷键有冲突
"let g:UltiSnipsListSnippets = "<C-l>"
" 添加自定义的 snippet，需要使用绝对路径
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']
" <C-f> 跳转的到下一个代码块可编辑区
let g:UltiSnipsJumpForwardTrigger = "<C-f>"
" <C-b> 跳转到上一个代码块可编辑区
let g:UltiSnipsJumpBackwardTrigger = "<C-b>"
" <Leader>us 进入对应扩展名的自定义 snippet 进行编辑
nnoremap <Leader>us :UltiSnipsEdit<CR>

"*****************************************************************************"
"                               bookmarks
"*****************************************************************************"
let g:bookmark_sign = '💡'
let g:bookmark_annotation_sign = '📜'
" 自动保存 .vim-bookmarks 文件，默认保存在 $HOME .'/.vim-bookmarks' 中
let g:bookmark_save_per_working_dir = 0
let g:bookmark_auto_save = 1
" mm 添加书签，mi 添加注释，mn 跳到下一个书签，mp 跳到上一个书签，ma 展示所有书签，mc 清除 buffer 中的书签

"*****************************************************************************"
"                               quickrun
"*****************************************************************************"
" <Leader>r 运行
let g:quickrun_no_default_key_mappings = 1
nmap <Leader>r <Plug>(quickrun)
let g:quickrun_config = {
    \   "_" : {
    \       "outputter" : "message",
    \   },
\}

"*****************************************************************************"
"                               lightline
"*****************************************************************************"
let g:lightline = {
    \ 'colorscheme': 'wombat',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'gitbranch', 'fileinfo', 'bufferinfo','modified'] ],
    \   'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ],
    \              [ 'lineinfo' ],
    \              [ 'percent' ],
    \              [ 'fileformat', 'fileencoding', 'filetype', 'charvalue']]
    \ },
    \ 'component': {
    \   'charvalue': '%b'.' '.'0x%B',
    \   'lineinfo': ' %3l:%-2v',
    \ },
    \ 'component_function': {
    \   'fileinfo': 'Fileinfo',
    \   'bufferinfo': 'BufferInfo',
    \   'readonly': 'Readonly',
    \   'gitbranch': 'GitBranchInfo'
    \ },
    \ 'separator': { 'left': "\ue0b0", 'right': "\ue0b2" },
    \ 'subseparator': { 'left': "\ue0b1", 'right': "\ue0b3" },
\ }
function! Readonly()
    return &readonly ? '' : ''
endfunction
function! GitBranchInfo()
    if exists('*fugitive#head')
        let branch = fugitive#head()
        return branch !=# '' ? ' '.branch : ''
    endif
    return ''
endfunction
function! BufferInfo() abort
    let l:bufnr = bufnr('%') 
    return l:bufnr.'/'.len(getbufinfo({'buflisted':1}))
endfunction
function! Fileinfo()
    let l:filesize = FileSize()
    let l:ft = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
    return l:ft.' '.l:filesize
endfunction
" 集成 ALE
let g:lightline.component_expand = {
    \  'linter_checking': 'lightline#ale#checking',
    \  'linter_warnings': 'lightline#ale#warnings',
    \  'linter_errors': 'lightline#ale#errors',
    \  'linter_ok': 'lightline#ale#ok',
\ }
let g:lightline.component_type = {
    \     'linter_checking': 'left',
    \     'linter_warnings': 'warning',
    \     'linter_errors': 'error',
    \     'linter_ok': 'left',
\ }
let g:lightline#ale#indicator_checking = "🌪 "
let g:lightline#ale#indicator_warnings = "⚡ "
let g:lightline#ale#indicator_errors = "🔥 "
let g:lightline#ale#indicator_ok = "🚀 "

"*****************************************************************************"
"                               signify
"*****************************************************************************"
let g:signify_vcs_list = ['git', 'svn']
let g:signify_skip_filetype = { 'vim-bookmarks': 1 }
let g:signify_sign_add = '+'
let g:signify_sign_delete = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change = '~'
let g:signify_sign_changedelete = g:signify_sign_change
" git 仓库使用 histogram 算法进行 diff
let g:signify_vcs_cmds = {
    \ 'git': 'git diff --no-color --diff-algorithm=histogram --no-ext-diff -U0 -- %f',
\}

"*****************************************************************************"
"                               gv
"*****************************************************************************"
" :GV 打开 commit 浏览器，:GV! 列举出影响当前行的 commit，<CR> 进入查看某条 commit 的详细信息

"*****************************************************************************"
"                               open-browser
"*****************************************************************************"
" 禁用 netrw 的 gx 映射
let g:netrw_nogx = 1
" gx 打开网址，或者搜索当前光标下的单词
nmap gx <Plug>(openbrowser-smart-search)
vmap gx <Plug>(openbrowser-smart-search)


"*****************************************************************************"
"                               journal
"*****************************************************************************"
" <Leader>ww 打开 scratch
nnoremap <Leader>ww :edit ~/.vim/scratch.txt<CR>
