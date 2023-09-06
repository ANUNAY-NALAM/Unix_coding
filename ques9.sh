read s
count=0

for i in ${s[@]}
do
    if [[ $i=="UNIX"||$i=="unix"||$i=="Unix" ]]
    then
       count=$((count+1))
    fi
done

echo $count