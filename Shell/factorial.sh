function prime()
{
    mul=1
    for((i=2; i<=n; i++))
    {
      mul=$((mul*i)) 
    }
    echo $mul
}

read n;
prime $n
