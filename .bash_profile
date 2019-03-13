# BOLD [time][user][cur folder]$ REGULAR
PS1='\[\e[1;97m\][\t][\u][\W]$ \[\e[0;37m\]'

# aliases
alias ls='ls -GFh'
alias tree='tree -Csu'
alias mkdir='mkdir -p'

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='ag -l'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

export EDITOR="vim"
