#!/usr/bin/env bash

read -p "Seminar: " SEMINAR

GENDER=$(awk -F '|' "NR==$SEMINAR {print \$1}" ./speaker.org)
NAME=$(awk -F '|' "NR==$SEMINAR {print \$2}" ./speaker.org)
SURNAME=$(awk -F '|' "NR==$SEMINAR {print \$3}" ./speaker.org)
RESEARCH=$(awk -F '|' "NR==$SEMINAR {print \$4}" ./speaker.org)
DAY=$(awk -F '|' "NR==$SEMINAR {print \$5}" ./speaker.org)

BASE_DIR="/home/thiago/Work-repos/thraraujo.github.io/seminars-templates/"
touch "./output/$NAME.org"
OUTPUT="./output/$NAME.org"

sed "s/{GENDER}/$GENDER/
    s/{NAME}/$NAME\ $SURNAME/
     s/{RESEARCH}/$RESEARCH/
     s/{DAY}/$DAY/" ./convite.org > $OUTPUT

echo "-- Message --" 
cat $OUTPUT
echo "-- End --" 

echo "This is the end..."
