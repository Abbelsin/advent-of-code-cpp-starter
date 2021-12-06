#!/bin/bash
date +'FORMAT'
now=$(date +'%d')

echo "Todays date: $now"


cd data/sample

#!/bin/sh
for i in `seq 1 $now`
do
    ./../../bin/input-downloader/aocdl -day $i -year 2021
done