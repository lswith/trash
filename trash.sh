#!/bin/bash

if [ "$#" -lt 1 ]; then
	echo "Usage: trash \"path/to/*.txt\""
	exit 1
fi

for file in "$@"; do
	trash-file "$file"
done
