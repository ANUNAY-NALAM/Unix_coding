read s
IFS=" "
max=0
while read s
do
  a=($s)
  if [[ max -lt ${a[2]} ]];
  then
  max=${a[2]}
  name=${a[1]}
  fi
done

echo $name
  