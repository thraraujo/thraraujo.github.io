#!/usr/bin/env bash

set -euo pipefail
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Starting arXiv scrape"




ARXIV=(hep-th math-ph nlin-ph cond-mat.stat-mech)

BASE_DIR="/home/thiago/Work-repos/thraraujo.github.io/scripts/scraping-arxiv/"
FILENAME=$(date +%F)

for url in "${ARXIV[@]}"

do
    touch "$BASE_DIR/papers/$FILENAME-$url-temp.org"
    TEMP_FILE="$BASE_DIR/papers/$FILENAME-$url-temp.org"
    touch "$BASE_DIR/papers/$FILENAME-$url.org"
    OUTPUT_FILE="$BASE_DIR/papers/$FILENAME-$url.org"

    python3 arxiv.py "$url" > $TEMP_FILE

    LOOP_AUTHORS=$(wc -l authors.org | awk '{print $1}')
    LOOP_FIELDS=$(wc -l fields.org | awk '{print $1}')

    for ((n=1; n <= LOOP_AUTHORS ; n++)) ; do
        author=$(awk "NR==$n {print \$1}" authors.org)
        grep -i "$author" $TEMP_FILE >> $OUTPUT_FILE
    done

    for ((n=1; n <= LOOP_FIELDS ; n++)) ; do
        field=$(awk "NR==$n {print \$1}" fields.org)
        grep -i "$field" $TEMP_FILE >> $OUTPUT_FILE
    done

    rm "$TEMP_FILE"
done




echo "[$(date '+%Y-%m-%d %H:%M:%S')] Finished successfully"
