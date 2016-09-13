if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
### Added by the Heroku Toolbelt
export PATH=/usr/loca/bin:$PATH
export PATH="/usr/local/heroku/bin:$PATH"
export PATH=$PATH:/usr/local/lib/ruby/gems/1.9.1/gems/jekyll-2.5.2/bin
export PATH=$HOME/local/node/bin:/usr/local/bin:$PATH

alias vim="mvim -v"
### Git command prompt and command line modifications 
source ~/.git-completion
source ~/.git-prompt.sh
PS1='\[\e[1;30m\]\u \[\e[1;34m\]\W \[\e[0;32m\]\[\e[40m\]$(__git_ps1 "[%s]")\[\e[0m\] $ '


##
# Your previous /Users/Jerry/.bash_profile file was backed up as /Users/Jerry/.bash_profile.macports-saved_2015-07-12_at_21:45:39
##

# MacPorts Installer addition on 2015-07-12_at_21:45:39: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
export CLICOLOR=1
