function ret_status(){
  echo "%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}⌦ %s)"
}

function is_prd(){
  if [[ "${RAILS_ENV:=development}" == "production" || "${NODE_ENV:=development}" == "production" ]]
  then
    echo "%{$fg[magenta]%}-prd- %n@%m"
  else
    echo "%{$fg[magenta]%}%n@%m"
  fi
}

PROMPT='$(ret_status)%{$fg[cyan]%}%c %{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"

RPROMPT='%{$fg[blue]%}$(date +%T)%{$reset_color%}'
