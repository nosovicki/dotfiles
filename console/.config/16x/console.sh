export EDITOR=vi
export VISUAL=vi

# Restore color theme
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && 
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && 
        eval "$("$BASE16_SHELL/profile_helper.sh")"

# Bat
export BAT_THEME=
export MANPAGER="sh -c 'sed -e s/.\\\\x08//g | bat -l man -p'"
alias bathelp='bat --plain --language=man'
help() {
    (echo "$@(0)"
    "$@" --help 2>&1) | bathelp
}
