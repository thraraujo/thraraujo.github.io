#!/usr/bin/env bash

read -p " Speaker's name: " NAME
read -p " Speaker's surname: " SURNAME
read -p " Speaker's research: " RESEARCH
read -p " best day: " DAY
#read -p " Speaker's gender (m or f): " GENDER

BASE_DIR="/home/thiago/Work-repos/thraraujo.github.io/seminars-templates/"
touch "$NAME.tex"
OUTPUT="$NAME.tex"

sed "s/NAME/$NAME\ $SURNAME/
     s/RESEARCH/$RESEARCH/
     s/DAY/$DAY/" ./convite-ele.org > $OUTPUT

echo "-- Message --" 
cat $OUTPUT
echo "-- End --" 

echo "This is the end..."





#if [ $GENDER = m ] ; then
#    echo $BASE_DIR
#    # touch $NAME.tex
#    # sed 's/NOME/$NAME/' convite-ele.tex > 
#else
#    echo " the speaker is called $NAME and is a woman "
#fi
