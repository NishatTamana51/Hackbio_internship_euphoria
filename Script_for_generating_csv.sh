#!/bin/bash

git clone https://github.com/NishatTamana51/Hackbio_internship_euphoria
cd ./Hackbio_internship_euphoria

chmod +x stage_0*
echo "Name, Email, Slack_id, Biostack, Twitter_id, Hamming_distance" >> Output_for_Euphoria.csv

for i in $(ls stage_0*)
do
        ./$i | awk -F: 'BEGIN {OFS=","} NR == 1 {line1=$0} NR == 2 {line2=$0} NR == 3 {line3=$0} NR == 4 {line4=$0} NR == 5 {line5=$0} NR == 6 { print line1, line2, line3, line4, line5, $0 }' >>Output_for_Euphoria.csv
done 
