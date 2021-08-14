### Alias 
alias ll='ls -lah'

### Change path
source ~/custom-bash/commands.sh

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

export CLICOLOR=1
