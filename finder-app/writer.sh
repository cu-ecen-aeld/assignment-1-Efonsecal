#!/bin/sh
# Application for finding contents in files in specific route

filepath=$1
newstr=$2

if [ $# -lt 2 ]; then
    echo "Some parameters were not specified!"
    exit 1
fi

if [ -d "$filepath" ]; then
    echo "The File Path '${filepath}' parameter is a directory!"
    exit 1
fi

filefolder=`dirname "$filepath"`
`mkdir -p "$filefolder"`
createFile=`touch "$filepath" | wc -l`

if [ "$createFile" -gt 0 ]; then
    echo "File could no be created"
fi

echo "$newstr" > "$filepath"

exit 0