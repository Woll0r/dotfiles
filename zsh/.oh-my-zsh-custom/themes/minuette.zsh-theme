# Custom theme based on the Gianu theme included with oh-my-zsh

function virtualenv_prompt_info(){
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX:=[}${VIRTUAL_ENV:t}${ZSH_THEME_VIRTUALENV_SUFFIX:=]}"
}

# disables prompt mangling in virtual_env/bin/activate
export VIRTUAL_ENV_DISABLE_PROMPT=1

PROMPT='%{$fg_bold[cyan]%}%n%{$reset_color%}@%{$fg_bold[green]%}%m%{$reset_color%} %{$fg_no_bold[yellow]%}%c%{$reset_color%} $(virtualenv_prompt_info)$(git_prompt_info)%{$reset_color%}$ '

ZSH_THEME_VIRTUALENV_PREFIX="%{$fg_bold[blue]%}("
ZSH_THEME_VIRTUALENV_SUFFIX=")%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="(%{$fg_bold[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%} %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$reset_color%}"
