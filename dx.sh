#!/bin/sh
f="$1"
shift
bash -c "sfdx force:$f $@"