# .zshrc

autoload -U colors
autoload -U compinit promptinit
autoload -U edit-command-line
autoload -Uz vcs_info

setopt COMPLETE_IN_WORD
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt AUTO_CD
setopt NO_BEEP
setopt prompt_subst
setopt autopushd
setopt pushdminus
setopt pushdsilent
setopt pushdtohome

colors
compinit
export CLICOLOR=1

zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'

PROMPT='%{$fg_bold[green]%}%~ %{$reset_color%}%{$fg[white]%}✎ %{$reset_color%} '
RPROMPT='${vcs_info_msg_0_}%    ${timeElapsed}%'

source "$HOME/.zsh/aliases.zsh"
source "$HOME/.zsh/binds.zsh"
source "$HOME/.zsh/zsh-autosuggestions.zsh"
source "$HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
source "$HOME/.zsh/zsh-history-substring-search.zsh"
source "$HOME/.zsh/command-execution-timer.zsh"

# history search binds
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

echo "
      ___           ___                       ___           ___           ___ 
     /\\  \\         /\\__\\          ___        /\\  \\         /\\  \\         /\\__\\ 
    /::\\  \\       /:/  /         /\\  \\      /::\\  \\       /::\\  \\       /:/  / 
   /:/\\:\\  \\     /:/__/          \\:\\  \\    /:/\\:\\  \\     /:/\\:\\  \\     /:/  / 
  /:/  \\:\\  \\   /::\\  \\ ___      /::\\__\\  /::\\~\\:\\  \\   /::\\~\\:\\  \\   /:/  /
 /:/__/ \\:\\__\\ /:/\\:\\  /\\__\\  __/:/\\/__/ /:/\\:\\ \\:\\__\\ /:/\\:\\ \\:\\__\\ /:/__/ 
 \\:\\  \\  \\/__/ \\/__\\:\\/:/  / /\\/:/  /    \\/_|::\\/:/  / \\/__\\:\\/:/  / \\:\\  \\ 
  \\:\\  \\            \\::/  /  \\::/__/        |:|::/  /       \\::/  /   \\:\\  \\ 
   \\:\\  \\           /:/  /    \\:\\__\\        |:|\\/__/        /:/  /     \\:\\  \\ 
    \\:\\__\\         /:/  /      \\/__/        |:|  |         /:/  /       \\:\\__\\ 
     \\/__/         \\/__/                     \\|__|         \\/__/         \\/__/ 

 "
