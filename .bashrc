# If not running interactively, don't do anything
[ -z "$PS1" ] && return

function wman() {
   url="man -w ${1} | sed 's#.*\(${1}.\)\([[:digit:]]\).*\$#http://developer.apple.com/documentation/Darwin/Reference/ManPages/man\2/\1\2.html#'"
   open `eval $url`
}

# Make a directory and then CD into it.
mkcd() {
    mkdir -p "$*"
    cd "$*"
}

# Aliases
# alias ls="ls -lhFG"
alias ls="ls -aFGhkLlpsTP"
alias l="ls"
alias lg="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//-/g' -e 's/^/ /' -e 's/-/|/'"
alias sites="cd /Sites"
alias top='top -ocpu'
alias t='todo.sh -d ~/.todo.cfg'

# Start and Stop Servers
alias start_mysql="sudo launchctl load -w /Library/LaunchDaemons/com.mysql.mysqld.plist"
alias stop_mysql="sudo launchctl unload -w /Library/LaunchDaemons/com.mysql.mysqld.plist"
alias start_postgres="/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start"
alias stop_postgres="/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile stop"
alias start_redis="redis-server /Users/kennethlove/Developer/etc/redis.conf"
alias start_mong="mongod run --config /usr/local/Cellar/mongodb/1.8.1-x86_64/mongod.conf"
alias start_jenkins="java -Dhudson.util.ProcessTreeKiller.disable=true -jar /usr/local/Cellar/jenkins/1.420/lib/jenkins.war --httpPort=8081"
#
# Python/Django
alias pm="python manage.py"
alias sm="python manage.py schemamigration"
alias m="python manage.py migrate"
alias pmr="python manage.py runserver"
alias pms="python manage.py shell"
alias pmrp="python manage.py runserver_plus"
alias pmsp="python manage.py shell_plus"
alias create_app="touch __init__.py admin.py models.py tests.py views.py urls.py"
#alias git=hub

export HISTIGNORE=""
export HISTSIZE=1048576
export HISTFILESIZE=1048576 #Max size of 1 MB (proper)
export PAGER="less"
export CLICOLOR="yes"
export FIGNORE="DS_Store"
export LANG="en_US.UTF-8"

#export PATH="/Users/kennethlove/Developer/Cellar/ruby/1.9.2-p0/bin:/Users/kennethlove/Developer/Cellar/ruby/1.9.2-p180/bin/:/Users/kennethlove/Developer/share/npm/bin:/Library/Frameworks/Python.framework/Versions/2.6/bin:/usr/texbin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:/usr/local/pgsql/bin:/Users/kennethlove/Developer/sbin:/Users/kennethlove/.gem/ruby/1.8/bin:/Users/kennethlove/Developer/bin/flex/bin:/Users/kennethlove/Developer/Cellar/geos/3.2.2/bin/:/Users/kennethlove/.cabal/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PYTHONPATH="/Library/Python/2.6:/Sites:/usr/local/bin:/usr/local/lib:$PYTHONPATH"
export NODE_PATH="/usr/local/lib/node:$NODE_PATH"
export GDFONTPATH="/Users/kennethlove/Library/Fonts:/Library/Fonts:/System/Library/Fonts"
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUALENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
export PROJECT_HOME=/Sites
export ARCH_FLAGS='-arch i386 -arch x86_64'

export CLICOLOR=1;
LSCOLORS=cxfxcxdxbxegedabagacad;
export LSCOLORS;
export PS1='\[\033[0;31m\]\h\[\033[0;33m\] \w\[\033[0m\]: '
export EDITOR=mvim
# export TERM=xterm-color

# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

export VMAIL_VIM=mvim

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

shopt -s cdspell
shopt -s histappend
shopt -s dotglob

set -o noclobber
set -o ignoreeof
set -o vi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
if [ -f /etc/git-completion.bash ]; then
    . /etc/git-completion.bash
fi
#source /usr/local/bin/virtualenvwrapper.sh
if [ -f /usr/local/share/doc/task/scripts/bash/task_completion.sh ]; then
    . /usr/local/share/doc/task/scripts/bash/task_completion.sh
fi
#source ~/src/django-trunk/extras/django_bash_completion
source /usr/local/bin/virtualenvwrapper.sh

# # Use MacVim's VIM instead of system VIM.
# # Start gVIM
v() {
if [ $# == 0 ]
then
    ~/Applications/MacVim.app/Contents/MacOS/Vim -g &
else
    if [ "$1" == "-" ]
    then
    ~/Applications/MacVim.app/Contents/MacOS/Vim -g -
    else
    ~/Applications/MacVim.app/Contents/MacOS/Vim -g "$@" &
    fi
fi
}

# # Start terminal version of VIM with clipboard support
vi() {
if [ $# == 0 ]
then
    ~/Applications/MacVim.app/Contents/MacOS/Vim
else
    if [ "$1" == "-" ]
    then
    ~/Applications/MacVim.app/Contents/MacOS/Vim -
    else
    ~/Applications/MacVim.app/Contents/MacOS/Vim "$@"
    fi
fi
}

# # Start terminal version of VIM with clipboard support
vim() {
if [ $# == 0 ]
then
    ~/Applications/MacVim.app/Contents/MacOS/Vim
else
    if [ "$1" == "-" ]
    then
    ~/Applications/MacVim.app/Contents/MacOS/Vim -
    else
    ~/Applications/MacVim.app/Contents/MacOS/Vim "$@"
    fi
fi
}

function git_diff() {
    git_diff --no-ext-diff -w "$@" | vim -R -
}

function tabc() {
NAME=$1; if [ -z "$NAME" ]; then NAME="Default"; fi
osascript -e "tell application \"Terminal\" to set current settings of front window to settings set \"$NAME\""
}

complete -cf sudo

source ~/.bash_vcs
source ~/.cider.profile
[[ -s "/Users/kennethlove/Developer/.rvm/scripts/rvm" ]] && . "/Users/kennethlove/Developer/.rvm/scripts/rvm" # Load RVM function


