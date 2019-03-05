#File: guessinggame.sh

echo "How many files are in the current directory?"
nof=0
count=`find /Users/rashijaiswal/Documents/workspace/ -type f | wc -l`
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

