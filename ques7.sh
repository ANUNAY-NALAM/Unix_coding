read s
IFS=";"
flag=0
while read s
do
   a=($s)
   if[[${a[2]}==Programmer or ${a[3]}==programmer]]
   then
   sal=$(({a[3]}*12))
   echo "${a[1]}, ${a[2]},${a[3]},$sal"
   flag=1
   fi
done

if[[flag==0]]
then 
  echo "No programmer found"
fi
