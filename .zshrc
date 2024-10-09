# Setup zinit package manager (https://github.com/zdharma-continuum/zinit)
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# Add zsh plugins
zinit light Aloxaf/fzf-tab
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-syntax-highlighting

# Add in snippets
zinit snippet OMZP::command-not-found
zinit snippet OMZP::git
#zinit snippet OMZP::rust
zinit snippet OMZP::sudo

autoload -Uz compinit && compinit

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"

# key-bindings
bindkey -e
bindkey '^[[A'    history-search-backward # Up
bindkey '^[[B'    history-search-forward # Down
bindkey '\e[1~'   beginning-of-line  # Linux console
bindkey '\e[H'    beginning-of-line  # xterm
bindkey '\eOH'    beginning-of-line  # gnome-terminal
bindkey '\e[2~'   overwrite-mode     # Linux console, xterm, gnome-terminal
bindkey '\e[3~'   delete-char        # Linux console, xterm, gnome-terminal
bindkey '\e[4~'   end-of-line        # Linux console
bindkey '\e[F'    end-of-line        # xterm
bindkey '\eOF'    end-of-line        # gnome-terminal
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

setopt auto_cd

# History
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
if [[ -e ~/.config/aliases ]]; then
  source ~/.config/aliases
fi


# Completion styling
#
source /usr/share/fzf/key-bindings.zsh
eval "$(zoxide init --cmd cd zsh)"
export SUDO_ASKPASS='/usr/lib/ssh/x11-ssh-askpass'

export PATH=$HOME/.local/bin:$PATH
