awk'BEGIN{FS=","}

if(NR>1&& $3~/[^finance$]/||NR>1&& $3~/[^Finance$]/)
{
    sum+=$4;
}
END{}
if(sum==0)
{
    print "No asset found";
}
else
{
    print price;
}}

'asset.txt