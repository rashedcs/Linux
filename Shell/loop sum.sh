function summation()
{
    sum=0
    for((i=m; i<=n; i++))
    {
        sum=`expr $sum + $i` 
    }
    echo $sum
}

read m n;
summation $m $n;
