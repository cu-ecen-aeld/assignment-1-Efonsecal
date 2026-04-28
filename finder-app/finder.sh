#!/bin/sh
# Application for finding contents in files in specific route

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]; then
    echo "Some parameters were not specified!"
    exit 1
fi

if ! [ -d "$filesdir" ]; then
    echo "The Files Directory '${filesdir}' parameter is not a directory!"
    exit 1
fi

filesondir=`ls "$filesdir" | wc -l`
textsondir=`grep -R "$searchstr" "$filesdir" | wc -l`

echo "The number of files are ${filesondir} and the number of matching lines are ${textsondir}"
exit 0