read s
IFS="|"

while read s
   a=($s)
   if [[${a[3]} -ge 90]]
   then
   echo "${a[1]} Gold"
   elif [[${a[3]} -ge 60]];
   then
   echo "${a[1]} Silver"
   elif [[$a[3] -lt 60 ]];
   then
   echo "${a[1]} Bronze"
   fi
done