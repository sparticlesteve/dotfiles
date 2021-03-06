#!/bin/bash

# .bash_profile
# Common environment setup

echo "Welcome to $HOSTNAME"

if [[ $HOSTNAME = "sf02.cern.ch" ]]; then
    source /usr/share/git-core/contrib/completion/git-prompt.sh
fi

# Configure the prompt
if [[ $HOSTNAME = "p05614910w96644.cern.ch" ]]; then
    PS1='[\[\e[0;33m\]\h\[\e[0m\]:\[\e[0;34m\]\W\[\e[0m\]]$ '
else
    PS1='[\[\e[1;33m\]\h\[\e[0m\]:\[\e[1;34m\]\W$(__git_ps1 " \[\e[1;35m\](%s)")\[\e[0m\]]$ '
fi

#if [[ $HOSTNAME = "sf01.cern.ch" ]]; then
#    #PS1="[\h \W]> "
#    PS1='[\[\e[0;33m\]\h\[\e[0m\]:\[\e[0;34m\]\W\[\e[0m\]]$ '
#else
#    # Shows current git branch :)
#    #PS1='[\h \W$(__git_ps1 " (%s)")]> '
#    #PS1='[\[\e[0;33m\]\h\[\e[0m\]:\[\e[0;34m\]\W$(__git_ps1 " \[\e[0;35m\](%s)")\[\e[0m\]]$ '
#    PS1='[\[\e[1;33m\]\h\[\e[0m\]:\[\e[1;34m\]\W$(__git_ps1 " \[\e[1;35m\](%s)")\[\e[0m\]]$ '
#fi

# Fix the macbook erase key
stty erase '^?'

# Not sure this is useful
export WORKAREA=/afs/cern.ch/work/s/sfarrell/workarea
export TestArea=$WORKAREA

# Atlas software setup procedure.
if [ ! -z $ATLAS_LOCAL_ROOT_BASE ]; then
    setupATLAS
    # I redefine these here so they work in a screen session.
    alias asetup='source $AtlasSetup/scripts/asetup.sh'
    alias rcSetup='source $ATLAS_LOCAL_RCSETUP_PATH/rcSetup.sh'
fi

# Rucio account setting
export RUCIO_ACCOUNT=$USER

# Evernote email address
export EVERNOTEMAIL=sparticlesteve.1ba49@m.evernote.com

# Setup aliases and functions
source ~/.aliases

###########################################################################
