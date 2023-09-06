awk' BEGIN{FS=";"}
{
    if(NR>1 && $4 ~/[^ASH]/)
    {
        print($1);
    }
}
END'