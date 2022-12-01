#!/bin/bash

filesdir=$1
searchstr=$2

if [ -z $filesdir ] || [ -z $searchstr ]
then
 echo "Missing params"
 exit 1 
fi

if [ ! -d $filesdir ] 
then
  echo "Not a directory"
  exit 1
fi

LINEMATCH=`grep -R $searchstr $filesdir | wc -l`
FILEMATCH=`grep -lR $searchstr $filesdir | wc -l`
echo "The number of files are $FILEMATCH and the number of matching lines are $LINEMATCH"
