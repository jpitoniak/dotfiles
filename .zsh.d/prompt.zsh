#  If the PROMPT_SUBST option is set, the prompt string is 
#  first subjected to parameter expansion, 
#  command substitution and arithmetic expansion.
setopt PROMPT_SUBST

# add git branch to prompt when inside a git repo
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
zstyle ':vcs_info:git:*' formats '%b'

function git_branch_name()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo ' %F{magenta}[ '$branch' ]%f'
  fi
}

PS1='%(#:%F{red}%n@%m%f:%F{green}%n%F{yellow}@%m%f)'
PS1+=':%F{cyan}%~%f'
PS1+='$(git_branch_name)'
PS1+=' %# '

precmd() {
	# Change the xterm title to the hsotname
	printf "\033]0;%s\007" "${HOST%%.*}"
}
