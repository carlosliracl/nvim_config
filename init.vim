call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'elixir-editors/vim-elixir'
Plug 'mhinz/vim-mix-format'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'mileszs/ack.vim'
Plug 'Yggdroot/indentLine'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'elixir-editors/vim-elixir'
call plug#end()

colorscheme gruvbox
set background=dark

" NCM config
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()

" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect

" General config

set hidden
set number
set relativenumber
set mouse=a

syntax on

" Globals
let g:mix_format_on_save = 1
let g:ackprg = 'ag --nogroup --nocolor --column'

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir="~/.config/nvim/UtilSnips"

let g:indentLine_defaultGroup = 'SpecialKey'
"let g:indentLine_bgcolor_term = 101
"let g:indentLine_bgcolor_gui = '#afbbc4'
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

"key mapping
let mapleader="\<space>"

nnoremap <leader>; A;<esc>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>

nnoremap <leader>mf :MixFormat<cr>

nnoremap <c-p> :FZF<cr>

nnoremap	<leader>gs :G<cr>
