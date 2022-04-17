# Add git branch in prompt
export GIT_PS1_SHOWDIRTYSTATE=1
source ~/.git-completion.bash
source ~/.git-prompt.sh

# Change Prompt
export PS1='\[\033[01;34m\]\w\[\033[00m\]\[\e[1;32m\]$(__git_ps1 " (%s)")\[\e[m\]\$ '