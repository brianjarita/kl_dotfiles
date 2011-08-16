# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="../custom/themes/kennethlove"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew django github osx pip redis-cli ssh-agent vagrant vi-mode lol)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
#export 
#PATH=/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/Users/kennethlove/Developer/.rvm/gems/ruby-1.9.2-p180/bin:/Users/kennethlove/Developer/.rvm/gems/ruby-1.9.2-p180@global/bin:/Users/kennethlove/Developer/.rvm/rubies/ruby-1.9.2-p180/bin:/Users/kennethlove/Developer/.rvm/bin:/Users/kennethlove/Developer/bin
export PATH="/usr/local/bin:/usr/local/sbin/:$PATH"
export TERM="xterm-256color"

alias ls="ls -aFGhkLlpsTP"
alias l="ls"
alias top="top -ocpu"
alias c="clear"

alias pm="python manage.py"
alias sm="python manage.py schemamigration"
alias m="python manage.py migrate"
alias pmr="python manage.py runserver"
alias pms="python manage.py shell"
alias pmrp="python manage.py runserver_plus"
alias pmsp="python manage.py shell_plus"

export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh
export PIP_RESPECT_VIRTUALENV=true
export PIP_VIRTUALENV_BASE=$WORKON_HOME

export ARCH_FLAGS="-arch i386 -arch x86_64"

source ~/.cider.profile
[[ -s "/Users/kennethlove/Developer/.rvm/scripts/rvm" ]] && . "/Users/kennethlove/Developer/.rvm/scripts/rvm"
