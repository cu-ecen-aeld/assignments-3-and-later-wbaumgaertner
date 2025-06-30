#!/bin/sh
if [ $# -eq 2 ]
then
   filesdir=$1
   searchstr=$2
   if [ -d $filesdir ]
   then
      FilesNum=$( grep -rl $searchstr $filesdir | wc -l )
	  LinesNum=$( grep -r $searchstr $filesdir | wc -l )
      echo "The number of files are $FilesNum and the number of matching lines are $LinesNum"
	  exit 0
   else
      echo "Directory $filesdir not found!"
	  exit 1
   fi
else
   echo "Wrong parameters! Needed 2 parameters to search one string in the directory recursively:"
   echo "finder.sh directory search_string"
   exit 1
fi
