ZSH_THEME_GIT_PROMPT_PREFIX="$FG[238] git:($FG[142]"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="$FG[238])[$FG[144]$(git_prompt_short_sha)$FG[238]]%{$fg[red]%}($(parse_git_dirty))"
ZSH_THEME_GIT_PROMPT_CLEAN="$FG[238])[$FG[144]$(git_prompt_short_sha)$FG[238]] "

#eval my_yellow='$FG[142]'
#eval my_cyan_to_yellow='$FG[159]'
#eval my_grey='$FG[235]'

local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='$FG[002]
| %{$fg[cyan]%}%c%{$reset_color%}$(git_prompt_info)
${ret_status}%{$reset_color%}'
RPROMPT='$FG[235]%~'