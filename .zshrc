export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="bureau"

CASE_SENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

source $ZSH/oh-my-zsh.sh

plugins=(git fzf-tab)

export PATH="/home/beau/bin:$PATH"
export PATH="/home/beau/.local/bin:$PATH"
export PATH=/home/beau/.nimble/bin:$PATH

export MADLAD_INSTALL=~/.local/share/madlad/

export LSOPTIONS="-lah"
export EDTIOR="nvim"

export CEED_INSTALL=~/.local/share/ceed/

alias vi=nvim
alias music=cmus

unalias ls
ls() { command ls --color=always -lah "${@:-.}" }
hex() { xxd -g 1 -Ralways "${@:-.}" }

cpdir() { find "$1" -type f -print0 | while IFS= read -r -d '' f; do; echo "=== $f ==="; cat "$f"; done | wl-copy }
clear
