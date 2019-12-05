if _BASHRC_WAS_RUN 2>/dev/null; then
    :;
else    # Stuff that only needs to run the first time we source .bashrc.
        # Useful to allow re-sourcing new changes, without breaking/changing things in this section
    alias _BASHRC_WAS_RUN=true
    # ... continued ...
fi

# Last mod time of a file or files
get_file_timestamp () {
    ls -1 --time-style=+%s -l  "$@" | cut -f6 -d" "
}

# Make sure our version of the .bashrc file is up-to-date, or reload it.
chk_bashrc_timestamp () {
    if [[ "$_BASHRC_TIMESTAMP" -lt "$(get_file_timestamp "$HOME/.bashrc")" ]]; then
        echo >&2 "Reloading .bashrc..."
        . ~/.bashrc
    fi
}
_BASHRC_TIMESTAMP=$(date +%s)

prompt_cmd () {
    chk_bashrc_timestamp
}
PROMPT_COMMAND=prompt_cmd

# some ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
