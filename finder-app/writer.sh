#!/bin/bash
if [ $# -eq 2 ]
then
   writefile=$1
   writestr=$2
   echo $writestr > $writefile
   if [ $? -eq 0 ]
   then
      exit 0
   else
      echo "Error by writing $writefile!"
	  exit 1
   fi
else
   echo "Wrong parameters! Needed 2 parameters to write one string to the file:"
   echo "writer.sh file_path write_string"
   exit 1
fi
