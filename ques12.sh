awk 'BEGIN={FS=" "}
max=9
if(NR>1)
{
    if(max<$3)
    {
        max=$3;
        name=$2;
    }
}
END{
    print name
}

'