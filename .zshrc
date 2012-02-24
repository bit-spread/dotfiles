export EDITOR=/Applications/MacVim.app/Contents/MacOS/Vim
alias vi='env LANG=ja_JP.UTF-8 /Applications/MacVim.app/Contents/MacOS/Vim "$@"'
export TERM="xterm-256color"
alias ls='ls -G'
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line

# historical backward/forward search with linehead string binded to ^P/^N
# #
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end
#
# ## Command history configuration
# #
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data

autoload -U compinit
compinit

## ????Ȥ?
setopt prompt_subst
#
### ľ???Ʊ?????ޥ?ɤ?ҥ??ȥ???ɲä??ʤ?
setopt hist_ignore_dups
#
## ?䴰???????ǥե?????μ??̤??̥ޡ???ɽ??(ls -F ?ε???)
setopt list_types
#
### TAB ?ǽ???䴰??????ڤ??ؤ???
setopt auto_menu

## ?䴰????Υ???????????ͭ???
zstyle ':completion:*:default' menu select=1
#
### ?䴰????ο??Ť?
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
#
## ?䴰????ˤ⿧?դ?ɽ??
eval `dircolors`
zstyle ':completion:*:default' list-colors ${LS_COLORS}

#export LSCOLORS=gxfxcxdxbxegedabagacad
export LSCOLORS=ExFxCxDxBxegedabagacad
