function hg_prompt_info {
    hg prompt --angle-brackets "\
< %{$reset_color%}on %{$fg[yellow]%}<branch>%{$reset_color%}>\
%{$fg[green]%}<status|modified|unknown><update>%{$reset_color%}" 2>/dev/null
}

local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

PROMPT='%{$fg[green]%}%c \
$(git_prompt_info)$(hg_prompt_info) \
%{$fg[red]%}%(!.#.»)%{$reset_color%} '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='%{$fg[blue]%}%~%{$reset_color%} ${return_code} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$reset_color%}on %{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}*%{$fg[yellow]%}"

