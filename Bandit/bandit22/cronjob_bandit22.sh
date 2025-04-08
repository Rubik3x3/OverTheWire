#!/bin/bash

myname=$('bandit22')
mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)

echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"

echo $mytarget
# cat /etc/bandit_pass/$myname > /tmp/$mytarget
