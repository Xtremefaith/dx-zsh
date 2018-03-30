#!/bin/sh

f="$1"
shift
if [ "$f" == "" ]; then
    sfdx force --help
else
    cmd="sfdx force:$f $@"
    bash -c "$cmd"
fi
