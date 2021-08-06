#!/bin/bash

#git clone https://github.com/NishatTamana51/Hackbio_internship_euphoria try_1
cd ./Hackbio_internship_euphoria
cd ./try_1
chmod +x script_B*
echo "name, email, slack_id, biostack" > output_euphoria.csv
for i in $(ls script_B*)
do
        ./$i | awk -F: 'BEGIN {OFS=","} NR == 1 {line1=$0} NR == 2 {line2=$0} NR == 3 {line3=$0} NR == 4 {line4=$0} NR == 5 {line5=$0} NR == 6 { print line1, line2, line3, line4, line5, $0 }' >>output_euphoria.csv
done 
