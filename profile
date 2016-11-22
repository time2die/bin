# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

alias vim='vim -p'
alias c='clear'
alias gc='gradle classes'
alias cc='clear; curl '
SOFT_HOME=$HOME/soft
IDEA_HOME=$SOFT_HOME/idea-IU-162.2032.8
MVN_HOME=$SOFT_HOME/apache-maven-3.3.9
SMARTGIT_HOME=$SOFT_HOME/smartgit
GRADLE_HOME=$SOFT_HOME/gradle-3.1
PATH="$HOME/bin:$HOME/.local/bin:$PATH:$GRADLE_HOME/bin:$SMARTGIT_HOME/bin:$MVN_HOME/bin:$IDEA_HOME/bin:$HOME/soft/node-v6.7.0-linux-x64/bin/"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/time2die/.sdkman"
[[ -s "/home/time2die/.sdkman/bin/sdkman-init.sh" ]] && source "/home/time2die/.sdkman/bin/sdkman-init.sh"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="\u:\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "
export PS1="\[\033[32m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\]$ "
