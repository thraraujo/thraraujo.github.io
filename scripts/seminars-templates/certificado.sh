#!/usr/bin/env bash

read -p "Seminar: " SEMINAR

GENDER=$(awk -F '|' "NR==$SEMINAR {print \$2}" ./speaker.org)
NAME=$(awk -F '|' "NR==$SEMINAR {print \$3}" ./speaker.org)
SURNAME=$(awk -F '|' "NR==$SEMINAR {print \$4}" ./speaker.org)
DAY=$(awk -F '|' "NR==$SEMINAR {print \$6}" ./speaker.org)
TITLE=$(awk -F '|' "NR==$SEMINAR {print \$7}" ./speaker.org)

BASE_DIR="/home/thiago/Work-repos/thraraujo.github.io/seminars-templates/"
touch "./output/$NAME.tex"
OUTPUT="./output/$NAME.tex"

sed "s/{GENDER}/$GENDER/
    s/{NAME}/$NAME\ $SURNAME/
     s/{TITLE}/$TITLE/
     s/{DAY}/$DAY/" ./certificado.tex > $OUTPUT

echo "-- Message --" 
cat $OUTPUT
echo "-- End --" 

echo "This is the end..."
