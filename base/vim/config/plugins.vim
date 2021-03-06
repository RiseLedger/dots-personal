" Plugins

let g:plug_window = 'enew'

call plug#begin("$XDG_CONFIG_HOME/vim/plugged")

" Sensible options that should always be set
Plug 'tpope/vim-sensible'

" Map common readline bindings in insert and command mode
Plug 'tpope/vim-rsi'

" Automagically detect the indenting style in the file
Plug 'tpope/vim-sleuth'

" Mappings for surrounding text
Plug 'tpope/vim-surround'

" Automatically enable 'paste' when pasting from a supporting terminal
" http://www.xfree86.org/current/ctlseqs.html#Bracketed Paste Mode
Plug 'ConradIrwin/vim-bracketed-paste'

" Fuzzy file / buffer / mru finder
Plug 'junegunn/fzf', { 'dir': '~/.local/lib/fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" Makes alignment a breeze (:Tab)
Plug 'godlygeek/tabular'

" Prettier status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" List buffers in the status line
Plug 'bling/vim-bufferline'

" Close matching pairs automagically with a few other neat features
Plug 'Raimondi/delimitMate'

" Adds argument text objects
Plug 'b4winckler/vim-angry'

" Full project text search
Plug 'mileszs/ack.vim'

" Show vertical lines for tab alignment
Plug 'Yggdroot/indentLine'

" Color schemes
Plug 'altercation/vim-colors-solarized'

" Syntax aware
Plug 'vim-scripts/nginx.vim'
Plug 'StanAngeloff/php.vim'
Plug '2072/PHP-Indenting-for-VIm'
Plug 'pearofducks/ansible-vim'
Plug 'tmux-plugins/vim-tmux'
Plug 'saltstack/salt-vim'

" File browsing
Plug 'scrooloose/nerdtree'

" Load other plugins
for plugin in split(globpath("$XDG_CONFIG_HOME/vim/config/plugins.d", "*.vim"), '\n')
    execute('source '.plugin)
endfor

call plug#end()
