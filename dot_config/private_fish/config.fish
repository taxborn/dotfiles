#!/usr/bin/fish

# Start GPG
set -x GPG_TTY (tty)

set -Ux EDITOR nvim

# Aliases
alias rl=". $HOME/.config/fish/config.fish"
alias vim="nvim"
alias c="clear"
alias ls="exa"
alias cat="bat --theme Dracula --style header,header-filesize,numbers,grid"
alias conf="vim ~/.config/fish/config.fish"
alias hx="helix"
alias pg="./target/debug/penguin"
alias pg_rl="./target/release/penguin"
alias vi="vim"

# Start starship prompt
starship init fish | source

# nnn (n^3) file manager
function n --wraps nnn --description 'support nnn quit and change directory'
    # Block nesting of nnn in subshells
    if test -n "$NNNLVL" -a "$NNNLVL" -ge 1
        echo "nnn is already running"
        return
    end

    # The behaviour is set to cd on quit (nnn checks if NNN_TMPFILE is set)
    # If NNN_TMPFILE is set to a custom path, it must be exported for nnn to
    # see. To cd on quit only on ^G, remove the "-x" from both lines below,
    # without changing the paths.
    if test -n "$XDG_CONFIG_HOME"
        set -x NNN_TMPFILE "$XDG_CONFIG_HOME/nnn/.lastd"
    else
        set -x NNN_TMPFILE "$HOME/.config/nnn/.lastd"
    end

    # Unmask ^Q (, ^V etc.) (if required, see `stty -a`) to Quit nnn
    # stty start undef
    # stty stop undef
    # stty lwrap undef
    # stty lnext undef

    # The command function allows one to alias this function to `nnn` without
    # making an infinitely recursive alias
    command nnn $argv

    if test -e $NNN_TMPFILE
        source $NNN_TMPFILE
        rm $NNN_TMPFILE
    end
end

