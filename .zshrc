# Created by newuser for 5.0.2
export LANG=ja_JP.UTF-8 #文字コードをUTF-8に設定
export EDITOR=emacs     #エディタをemacsに設定

#.bashrcを参照
source ~/.bashrc

#補完機能を有効にする
autoload -U compinit
compinit

#日本語ファイル名を表示可能にする
setopt print_eight_bit

autoload -U colors && colors

#プロンプトが表示されるたびにプロンプト文字列を評価、置換する
setopt prompt_subst

# vcs_infoロード    
 autoload -Uz vcs_info    
#
# # vcsの表示    
  zstyle ':vcs_info:*' formats '%s][* %F{green}%b%f'    
  zstyle ':vcs_info:*' actionformats '%s][* %F{green}%b%f(%F{red}%a%f)'    
# # プロンプト表示直前にvcs_info呼び出し    
 precmd() { vcs_info }    
# # プロンプト表示    
# RPROMPT='[${vcs_info_msg_0_}]:%~/%f '
 RPROMPT='[${vcs_info_msg_0_}]'

#プロンプトの設定
PROMPT="
%{$fg_bold[cyan]%}[%d]%{$reset_color%}
%(?.%{$fg_bold[green]%}.%{$fg_bold[red]%})%(?![%n@%m]
(* ^ _ ^ #) -----> ![%n@%m]
(* > _ <; %) -----> )%{$reset_color%}"

#右側プロンプト
#RPROMPT="%{$fg_bold[cyan]%}[%d]%{$reset_color%}"

#本当はこれ？
SPROMPT="%{$fg_bold[blue]%}(* - _ - ?) oO( %r )?%{$reset_color%}
$fg_bold[yellow]%} [Yes y / No n / a / e]: %{$reset_color%}"

#補完候補を一覧表示
setopt auto_list

#TABで順に補完候補を切り替える
setopt auto_menu

#補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu_select=1

#色の設定
export LSCOLORS=Exfxcxdxbxegedabagacad

#補完時の色の設定
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'

#ZLS_CORORS
export ZLS_COLORS=$LS_COLORS

#lsコマンド時、自動で色がつく
export CLICOLOR=true

#補完候補に色をつける
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

#スペルチェック
setopt correct

#補完候補を詰めて表示
setopt list_packed

#補完候補をハイライト
zstyle ':completion:*:default' menu select=0
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*:messages' format $YELLOW'%d'$DEFAULT
zstyle ':completion:*:warnings' format $RED'No matches for:'$YELLOW' %d'$DEFAULT
zstyle ':completion:*:descriptions' format $YELLOW'completing %B%d%b'$DEFAULT
zstyle ':completion:*:corrections' format $YELLOW'%B%d '$RED'(errors: %e)%b'$DEFAULT
zstyle ':completion:*:options' description 'yes'

#zsh-syntax-highlighting
if [ -f ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

export NVM_DIR="/home/natoriumu/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# rbenv
[[ -d ~/.rbenv  ]] && \
    export PATH=${HOME}/.rbenv/bin:${PATH} && \
    eval "$(rbenv init -)"
