#!/bin/bash
FILE=$1
LINE=$2
if [ $# -eq 2 ]
then
        if [ -f "$FILE" ]
        then
                echo Error : $FILE exists
                exit 1
        else
                #touch $FILE
                for ((i=1; i<=$LINE; i++))
                do
                touch $FILE
                echo $RANDOM >> $FILE
                done
                echo File $FILE created
                exit 0
        fi
else
        echo Usage: getoption.sh must include 1 filename and 1 integer value
        exit 2
fi
