read s
IFS=";"
sem1=0
sem2=0
sem3=0
sem4=0

while read s
do
   a=${s}
   if [[ ${a[1]} == "sem 1" ]]
   then  
      $sem1=(($sem1+1))
   fi
   if [[ ${a[1]} == "sem 2" ]]
   then  
      $sem2=(($sem2+1))
   fi
   if [[ ${a[1]} == "sem 3" ]]
   then  
      $sem3=(($sem3+1))
   fi
   if [[ ${a[1]} == "sem 4" ]]
   then  
      $sem4=(($sem4+1))
   fi
done

if [[ $sem1 -gt 0 ]]
then 
   echo "sem 1" $sem1
fi
if [[ $sem2 -gt 0 ]]
then 
   echo "sem 2" $sem2
fi
if [[ $sem3 -gt 0 ]]
then 
   echo "sem 3" $sem3
fi
if [[ $sem4 -gt 0 ]]
then 
   echo "sem 4" $sem4
fi
