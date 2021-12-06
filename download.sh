#!/bin/bash
#date +'FORMAT'
now=$(date +'%d')
echo ".--- Running input download script ---."
echo "  Todays date: $now december"


cd data/sample

#!/bin/sh
for i in `seq 1 $now`
do
    FILE="day${i}_input.txt"
    if test -f "$FILE"; then
        echo "  $FILE exists"
    else
        echo "  Downloading input for day ${i}..."
        ./../../bin/input-downloader/aocdl -day $i -year 2021
        echo "    saved in ${FILE}"
    fi
done
echo "'--- end of input download script  ---'"