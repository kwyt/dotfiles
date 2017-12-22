if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-rails'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'marcus/rsense'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'thinca/vim-ref'
NeoBundle 'yuku-t/vim-ref-ri'
NeoBundle 'szw/vim-tags'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'soramugi/auto-ctags.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'basyura/unite-rails'
NeoBundle 'fatih/vim-go'
NeoBundle 'vim-jp/vim-go-extra'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'valloric/matchtagalways'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'vim-jp/vital.vim'
NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'mac' : 'make',
\    },
\ }
NeoBundle 'kazuph/previm', 'feature/add-plantuml-plugin'
NeoBundle 'tyru/open-browser.vim'
NeoBundle "aklt/plantuml-syntax"

call neobundle#end()
call unite#set_profile('default', 'context', {'ignorecase':1})

NeoBundleCheck

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1

let g:unite_enable_start_insert = 1
let g:unite_enable_ignore_case = 1
let g:unite_enable_smart_case = 1

" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif


if !exists('g:neocomplete#force_omni_input_patterns')
  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.ruby = '[^.*\t]\.\w*\|\h\w*::'

if !exists('loaded_matchit')
  runtime macros/matchit.vim
endif

" autocmd VimEnter * execute 'NERDTree'

" Go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

let g:mta_use_matchparen_group = 1
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'erb' : 1,
    \}

