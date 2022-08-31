call plug#begin('~/.config/nvim/autoload/plugged')
Plug 'scrooloose/NERDTree'
Plug 'dracula/vim', { 'as': 'dracula' }
call plug#end()
set termguicolors
colorscheme dracula
set number
