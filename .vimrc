"Vi互換モードをオフ
set nocompatible

"ファイル名と内容によってファイルタイプを判別し、ファイルタイププラグインを有効に
filetype indent plugin on

"色付けをオン
syntax on

"バッファを保存しなくても他のバッファを表示できるようにする
set hidden

"コマンドライン補完を便利に
set wildmenu

"タイプ途中のコマンドを画面最下行に表示
set showcmd

"検索語を強調表示
set hlsearch

"検索時に大文字小文字を区別しない
"set ingorecase
"set smartcase

"オートインデント、改行、インサートモード開始直後にBSキーで削除できるようにする
set backspace=indent,eol,start

"オートインデント
set autoindent

"移動コマンドを使ったとき、行頭に移動しない
set nostartofline

"画面最下行にルーラーを表示する
set ruler

"ステータスラインを常に表示する
set laststatus=2

"バッファが変更されているとき、コマンドをエラーではなく、保存するかどうか確認にする
set confirm

"ビープの代わりにビジュアルベルを使う
set visualbell

"ビジュアルベルも無効化
set t_vb=

"全モードでマウスを有効化
set mouse=a

"行番号を表示
set number

"キーコードはすぐにタイムアウト、マッピングはタイムアウトしない
set notimeout ttimeout ttimeoutlen=200

"F11キーで'paste'と'nopaste'を切り替える
set pastetoggle=<F11>

"インデント関連のオプション

"タブ文字を4文字分の幅で表示
set shiftwidth=4
set tabstop=4

"マッピング

"Yの動作をDやCと同じにする
map Y y$

"<C-L>で検索後の強調表示を解除する
nnoremap <C-L> :nohl<CR><C-L>

noremap <C-S> :update<CR>
vnoremap <C-S> <C-C>:update<CR>
inoremap <C-S> <C-O>:update<CR>

