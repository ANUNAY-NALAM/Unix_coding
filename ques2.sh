read s;
IFS=";"

while read s

do
  a=($s)
  if [[ ${a[3]:0:1}=="A" || ${a[3]:0:1}=="N" || ${a[3]:0:1}=="H" ]]
  then
    echo ${a[0]}
  fi
dones