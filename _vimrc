

" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
if exists("g:did_load_filetypes")
	filetype off
	filetype plugin indent off
endif
"set runtimepath+=/home/jpierson1/opt/go/misc/vim " replace $GOROOT with the output of: go env GOROOT
filetype plugin indent on
syntax on

set showcmd
set showmatch
set incsearch
set background=dark
set enc=utf-8
set fileencoding=utf-8
set mouse=

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  filetype plugin indent on
  " Ruby
  au FileType ruby setl sw=2 sts=2 expandtab
  au BufNewFile,BufRead *.gemspec set filetype=ruby
  au FileType puppet setl sw=2 sts=2 expandtab

  au FileType php setl sw=4 sts=4 expandtab
endif
