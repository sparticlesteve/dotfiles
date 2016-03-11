#!/bin/bash

# .bash_profile
# Common environment setup

echo "Welcome to $HOSTNAME"

# Configure the prompt. Shows current git branch :)
PS1='[\h \W$(__git_ps1 " (%s)")]> '
#PS1="[\h \W]> "

# Fix the macbook erase key
stty erase '^?'

# Set my default workarea based on machine
if [[ $HOSTNAME = "pcuci01" ]]; then
    export WORKAREA=/work/sfarrell/AtlasOffline-Any/SusyAna_2012
    export TestArea=$WORKAREA
else
    export WORKAREA=/afs/cern.ch/work/s/sfarrell/workarea
    export TestArea=$WORKAREA
fi

# Atlas software setup procedure
setupATLAS

# Rucio account setting
export RUCIO_ACCOUNT=$USER

# Evernote email address
export EVERNOTEMAIL=sparticlesteve.1ba49@m.evernote.com

# Setup aliases and functions
source ~/.aliases

###########################################################################
