awk' BEGIN={FS=";"}

 if( NR>1 && ($3~/^Programmer$/ || $3~/^programmer$/))
 {
    print $2 "," $3 "," $4 "," $4"*12;
 }
END'