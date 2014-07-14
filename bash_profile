#!/bin/bash

# .bash_profile
# Common environment setup

echo "Welcome to $HOSTNAME"

# Configure the prompt
PS1="[\h \W]> "
# Alternate
#PS1="\h(\W)> "

# Fix the macbook erase key
stty erase '^?'

# Set my default workarea based on machine
if [[ $HOSTNAME = "pcuci01" ]]; then
    export WORKAREA=/work/sfarrell/AtlasOffline-Any/SusyAna_2012
    export TestArea=$WORKAREA
else
    #export WORKAREA=/afs/cern.ch/work/s/sfarrell/workarea/SusyAna_2012
    #export WORKAREA=/afs/cern.ch/work/s/sfarrell/workarea/XAODTutorialRoot
    #export WORKAREA=/afs/cern.ch/work/s/sfarrell/workarea/XAODTutorialAthena
    export WORKAREA=/afs/cern.ch/work/s/sfarrell/workarea/Pat_2014
    export TestArea=$WORKAREA
fi

# Atlas software setup procedure
# Should now use setupATLAS instead
export AtlasSetup=/afs/cern.ch/atlas/software/dist/AtlasSetup
alias asetup='source $AtlasSetup/scripts/asetup.sh'

# Evernote email address
export EVERNOTEMAIL=sparticlesteve.1ba49@m.evernote.com

# Setup aliases and functions
source ~/.aliases

###########################################################################
