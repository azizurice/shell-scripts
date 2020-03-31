FILE=""
LINE=""

while getopts "f:l:" opt; do
    case $opt in
        l)  LINE="$OPTARG"
            ;;
        f)  FILE="$OPTARG"
            ;;
    esac
done

if [ -z "$LINE" ]; then
  echo ERROR :  "Line numbers not provided, Bye."
  exit 1 #error
elif [ "$LINE" -lt 0 ]; then
  echo ERROR : "Line numbers must be > 0"
  exit 1
else
  if [ -n "$FILE" ]; then
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
    echo ERROR : "File name not provided"
    exit 1
  fi
  echo Usage: getoption.sh must include 1 filename and 1 integer value
  exit 2
fi
