read s
IFS=","
while read s
sum=0
do 
   a=($s)
   if [[ ${a[2]} == "finance" || ${a[2]} == "Finance" || ${a[2]} == "FINANCE" ]];
   then
     sum=$((sum+${a[3]})
   fi
done

echo $sum