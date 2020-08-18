"--interface apearance
filetype plugin on
syntax enable
set number "show line numbers
set rnu "show relative line numbers
set ruler "show current position --indenting 
set expandtab "set tabs to spaces
set tabstop=4 "make each tab 4 spaces
set shiftwidth=4 "number of spaces to use for automatic indentation
set autoindent "fallback indenting
set smartindent
"--spelling
setlocal spell spelllang=en_us "spell check
set spell spelllang=en_us
"make jj do esc"
inoremap jj <Esc>

set colorcolumn=79
hi ColorColumn ctermbg=lightgrey guibg=lightgrey


"backups"
set backup 
set undodir=~/.config/nvim/.undo//
set backupdir=~/.config/nvim/.backup//
set directory=~/.config/nvim/.swp//


" You use vimplug "
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vimwiki/vimwiki'
Plug 'scrooloose/nerdtree' 
Plug 'lervag/vimtex'
Plug 'morhetz/gruvbox'
Plug 'danilo-augusto/vim-afterglow'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'enricobacis/vim-airline-clock'
" Plugins for autocomplete and linting 
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-pyclang'
Plug 'ncm2/ncm2-go'
Plug 'ncm2/ncm2-ultisnips'
Plug 'w0rp/ale'
Plug 'rhysd/vim-grammarous'
Plug 'ryanoasis/vim-devicons'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
call plug#end()

"--colors"
set termguicolors
"set background=dark
let g:afterglow_inherit_background=1
colorscheme afterglow
"let g:gruvbox_italic=1
"colorscheme gruvbox


let g:ncm2_pyclang#library_path = '/usr/lib/llvm-6.0/lib/libclang.so.1'
autocmd FileType c,cpp nnoremap <buffer> gd :<c-u>call ncm2_pyclang#goto_declaration()<cr>

autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

" open NERDTree automatically "
autocmd vimenter * NERDTree

" Set up ale linter
let g:ale_linters = {'go':['gofmt', 'golint']}
"set vimtex flavor"
let g:tex_flavor='latex'
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_general_viewer = 'xreader'
au User Ncm2Plugin call ncm2#register_source({
            \ 'name' : 'vimtex',
            \ 'priority': 1,
            \ 'subscope_enable': 1,
            \ 'complete_length': 1,
            \ 'scope': ['tex'],
            \ 'matcher': {'name': 'combine',
            \           'matchers': [
            \               {'name': 'abbrfuzzy', 'key': 'menu'},
            \               {'name': 'prefix', 'key': 'word'},
            \           ]},
            \ 'mark': 'tex',
            \ 'word_pattern': '\w+',
            \ 'complete_pattern': g:vimtex#re#ncm,
            \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
            \ })
set completeopt=noinsert,menuone,noselect

"set noshowmode

let g:vimwiki_list = [{'path': '~/vimwiki/',
            \ 'template_path':'~/Templates',
            \ 'template_default': 'notes',
            \ 'template_ext': '.html',
            \ 'css_name': 'style.css'},
            \ {'path':'~/writeups', 'syntax': 'markdown', 'ext': '.md'}]

"turn off vimtex indent"
let g:vimtex_indent_enabled=0

"turn on powerline fonts
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

"set up utilisnips
inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsRemoveSelectModeMappings = 0
