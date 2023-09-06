read s
IFS=";"

d=()

while read s
  a=($s)
do 
  if [[ ${d[${a[1]:4:1}]} -eq 0 ]]
  then
     d[${a[1]:4:1}]=1
  else
     d[${a[1]:4:1}]=$(({d[${a[1]:4:1}]}+1))
  fi
  i=$((i+1))
done
j=0
for i in ${d[@]}
do
   j=((j+1))
   echo "sem $j $i"
done
