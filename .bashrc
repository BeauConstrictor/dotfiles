# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc

export PATH="/home/beau/bin:$PATH"

export LSOPTIONS="-lah"
export EDITOR="nvim"
export GTK_THEME=Adwaita:dark

alias vi=nvim
unalias ls
ls() { command ls --color=always -lah "${@:-.}"; }
hex() { xxd -g 1 -Ralways "${@:-.}"; }

cpdir() {
    find "$1" -type f -print0 | while IFS= read -r -d '' f; do
        echo "=== $f ==="
        cat "$f"
    done | wl-copy
}
