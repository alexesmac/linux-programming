#!/bin/bash

writefile=$1
writestr=$2

if [ -z $writefile ] || [ -z $writestr  ]
then
  echo "Missing params"
  exit 1
fi

(mkdir -p "$(dirname "$writefile")" && touch "$writefile") || exit 1
echo $writestr > $writefile
