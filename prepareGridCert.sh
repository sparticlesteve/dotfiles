#!/bin/bash

# Prepare your grid certificate!!  Wheeeee!

if [[ $# = 0 ]]; then
    echo "You need to supply the backed-up certificate (.p12 file)"
    exit 1
fi

openssl pkcs12 -in $1 -clcerts -nokeys -out usercert.pem
openssl pkcs12 -in $1 -nocerts -out userkey.pem
chmod 400 userkey.pem
chmod 444 usercert.pem

ls userkey.pem
ls usercert.pem
echo "Done.  You may now move the files into your .globus dir"
