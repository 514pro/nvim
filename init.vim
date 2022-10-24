"----set
:set number
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set cursorline


set expandtab
set shiftwidth=2
set tabstop=2

filetype plugin indent on
syntax on


"----source
source $HOME/.config/nvim/plug-config/coc.vim
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-css', 'coc-html', 'coc-json']
let g:jsx_ext_required = 0

"----PLUGINS plugins
call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/overcache/NeoSolarized'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yuezk/vim-js'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-telescope/telescope-file-browser.nvim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
call plug#end()

"----KEYMAP keymap
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-f> :Files<CR>
nnoremap <C-n> :tabnew<CR>
nnoremap <C-w> :-tabnext<CR>
nnoremap <C-e> :+tabnext<CR>

"----COLORSCHEME colorscheme
colorscheme NeoSolarized
set background=dark

"----NERDTree_arrows
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"



"----VIMENTER_PLUGIN_CHECK vimenter_plugin_check
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags


func! s:my_colors_setup() abort
  highlight CocFloating ctermbg=10 " For background color
  highlight CocErrorFloat ctermfg=8 " For text color
  highlight CocMenuSel ctermbg=LightGray ctermfg=yellow

endfunc

augroup colorscheme_coc_setup | au!
  au VimEnter * call s:my_colors_setup()

augroup END


