set nocompatible " vi와 호환하지 않음. 다른 옵션값들에 영향을 줌.
" 파일의 타입에 맞게 indent를 조절
if has("filetype")
    filetype indent plugin on
endif

" Syntax Highlighting
if has("syntax")
    syntax on
endif

set background=dark
set mouse=a

set hlsearch " 문자열을 검색할 때 매칭되는 문자열을 하이라이트
set incsearch " 검색시 한 글자씩 입력할 때마다 검색을 수행
set ignorecase " 검색시 대소문자 구별하지 않음
set smartcase " 검색어에 대문자가 포함되어 있다면 대소문자를 무시하지 않음.
set nowrapscan " 검색할 때 문서의 끝에서 처음으로 안돌아감

" Indent stuffs
set smartindent "자동 들여쓰기 시 #include 와 같은 전처리 구문을 판단하여 들여쓰기 안함
set autoindent
" set cindent " C style indent
set shiftwidth=4 " 자동 인덴트할 때 스페이스 설정값
set ts=4 " Tab을 출력시 몇 개의 스페이스를 보여줄지에 대한 설정값
set sts=4 " Tab 키를 눌렀을 때 몇 개의 스페이스를 입력할 것인지에 대한 설정값
set smarttab " ts, sts, sw 값을 참조하여, 탭과 백스페이스의 동작을 보조
set smartcase

" Line Number
set number
set relativenumber

set showmatch "괄호를 입력시 짝이되는 괄호를 하이라이트

" Status Bar
set laststatus=2 "상태바 표시를 항상하기
set ruler "상태에바에 현재 커서 위치의 줄번호와 행번호를 출력
set title " 제목 표시

" 파일 인코딩을 한국어로
set fileencodings=utf8,euc-kr

set bs=indent,eol,start " backspace 키 사용가능

set history=1000 " 명령어에 대한 히스토리를 1000개까지

set nobackup
set noswapfile

set wmnu "tab 자동완성시 가능한 목록을 보여줌

set paste " 붙여넣기 시 계단식으로 되는거 방지

set autowrite " 다른 파일을 읽게 되는 경우 현재 파일을 자동으로 저장하기

" 마지막으로 수정된 곳에 커서를 위치함
au BufReadPost *
\ if line("'\"") > 0 && line("'\"") <= line("$") |
\ exe "norm g`\"" |
\ endif

" ============================ Plugin Stuffs ========================================== 
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'bling/vim-airline'
Plug 'preservim/nerdcommenter'
Plug 'morhetz/gruvbox'
Plug 'nanotech/jellybeans.vim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" colorscheme jellybeans 
colorscheme gruvbox 

nnoremap <space>h <C-w>h
nnoremap <space>j <C-w>j
nnoremap <space>k <C-w>k
nnoremap <space>l <C-w>l


" vim-javacomplete2
  nmap <leader>jI <Plug>(JavaComplete-Imports-AddMissing)
  nmap <leader>jR <Plug>(JavaComplete-Imports-RemoveUnused)
  nmap <leader>ji <Plug>(JavaComplete-Imports-AddSmart)
  nmap <leader>jii <Plug>(JavaComplete-Imports-Add)
  imap <C-j>I <Plug>(JavaComplete-Imports-AddMissing)
  imap <C-j>R <Plug>(JavaComplete-Imports-RemoveUnused)
  imap <C-j>i <Plug>(JavaComplete-Imports-AddSmart)
  imap <C-j>ii <Plug>(JavaComplete-Imports-Add)
  nmap <leader>jM <Plug>(JavaComplete-Generate-AbstractMethods)
  imap <C-j>jM <Plug>(JavaComplete-Generate-AbstractMethods)
  nmap <leader>jA <Plug>(JavaComplete-Generate-Accessors)
  nmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
  nmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
  nmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
  nmap <leader>jts <Plug>(JavaComplete-Generate-ToString)
  nmap <leader>jeq <Plug>(JavaComplete-Generate-EqualsAndHashCode)
  nmap <leader>jc <Plug>(JavaComplete-Generate-Constructor)
  nmap <leader>jcc <Plug>(JavaComplete-Generate-DefaultConstructor)
  imap <C-j>s <Plug>(JavaComplete-Generate-AccessorSetter)
  imap <C-j>g <Plug>(JavaComplete-Generate-AccessorGetter)
  imap <C-j>a <Plug>(JavaComplete-Generate-AccessorSetterGetter)
  vmap <leader>js <Plug>(JavaComplete-Generate-AccessorSetter)
  vmap <leader>jg <Plug>(JavaComplete-Generate-AccessorGetter)
  vmap <leader>ja <Plug>(JavaComplete-Generate-AccessorSetterGetter)
  nmap <silent> <buffer> <leader>jn <Plug>(JavaComplete-Generate-NewClass)
  nmap <silent> <buffer> <leader>jN <Plug>(JavaComplete-Generate-ClassInFile)
