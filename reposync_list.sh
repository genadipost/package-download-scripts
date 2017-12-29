#!/bin/bash
# usage:
# ./reposync_with_list.sh /path/to/repo/list.txt /path/to/repo/directory

FILENAME=$1
DIRECTORY=$2

if [ ! -f "$FILENAME" ]; then
   echo "The repo file does not exists"
else
   if [ ! -d "$DIRECTORY" ]; then
      echo "The sync directory does not exists"
   else
      filelines=`cat $FILENAME`
      for line in $filelines ; do
         echo ------ syncing $line repository to $DIRECTORY/$line
         reposync -m -l -d --repoid=$line --download_path=$DIRECTORY
         createrepo --workers 20 -v $DIRECTORY/$line
      done
   fi
fi
