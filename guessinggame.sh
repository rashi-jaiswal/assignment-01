#!/bin/sh 
#File: guessinggame.sh

nof=0
count=0

function count_files_in_var_tmp {
    count=`find /var/tmp -type f | wc -l`;
}

count_files_in_var_tmp
echo "How many files are in the current directory?"
while [[ $nof -ne $count ]]
do
    echo "Can you guess ?" 
    read nof
    if  [[ $nof -eq $count ]]
    then
        echo "Congratulations, Correct Answer!"
        break
    fi
    if [[ $nof -le $count-1 ]]
    then
        echo "Too low"
        continue
    fi
    if [[ $nof -ge $count+1 ]]
    then
        echo "Too high"
        continue
    fi
done

