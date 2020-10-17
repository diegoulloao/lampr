#!/bin/sh

# Changes the profile checking the macOS mode

if [[ "$(uname -s)" == "Darwin" ]]; then
	if [[ $(defaults read -g AppleInterfaceStyle 2>/dev/null) == "Dark" ]]; then
		echo -ne "\033]50;SetProfile=$DARK_THEME\a"
		export ITERM_PROFILE="$DARK_THEME"
		
		if [[ ! -z "$COLOR_LS_THEME" ]]; then
            COLOR_LS_THEME="dark"
        fi
	fi
fi

# Switch aliases

function colorls_lampr() {
    alias @light="echo -ne \"\033]50;SetProfile=$LIGHT_THEME\a\" && export ITERM_PROFILE=\"$LIGHT_THEME\" && alias $1=\"$2 --light\""
    alias @dark="echo -ne \"\033]50;SetProfile=$DARK_THEME\a\" && export ITERM_PROFILE=\"$DARK_THEME\" && alias $1=\"$2 --dark\""
}
