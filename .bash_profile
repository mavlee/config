# BOLD [time][user][cur folder]$ REGULAR
PS1='\[\e[1;97m\][\t][\u][\W]$ \[\e[0;37m\]'

# aliases
alias ls='ls -GFh'
alias tree='tree -Csu'
alias mkdir='mkdir -p'

# ec2 aliases
alias ssh-team-zerg-rush='ssh -v -i ~/.ssh/team-zerg-rush.pem ubuntu@ec2-184-72-64-221.compute-1.amazonaws.com'

# Load RVM Function
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export EDITOR="vim"
