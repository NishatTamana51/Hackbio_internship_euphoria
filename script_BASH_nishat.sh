#!/bin/bash

echo "Nishat Tamanna"
echo "nishattamanna51@gmail.com"
echo "@nishat"
echo "Genomics"
echo "@ni7shat"

#calculating hamming distance
slack="@nishat"
twitter="@ni7shat"

if [ "$slack" = "$twitter" ]; then
    awk -v slack=$slack -v twitter=$twitter '{ for (i=1;i<=length(slack);i++) { if (substr(slack,i,1) != substr(twitter,i,1)) { count++ } }} END { print (count) }' <<< ""
else
    echo "not applicable"
fi
