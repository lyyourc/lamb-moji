EMOJI=(😎 😋 🐥 🍭 🍺 🐸 😛 🤘 👾 👻 🌚 👏 🐠 🚀 )

function random_emoji {
    echo -n "$EMOJI[$RANDOM%$#EMOJI+1]"
}

PROMPT=""
RPROMPT='%c'

PROMPT='%~/ $(git_prompt_info)%{$reset_color%}
$(random_emoji)  λ '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
