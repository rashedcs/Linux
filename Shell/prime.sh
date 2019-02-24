function prime()
{
    for((i=2; i<=num; i++))
    do
        if [ `expr $num % $i` == 0 ]
        then
            echo $num is not prime rasu
            exit
        fi
    done
    echo $num is a prime number
}

read num;
prime "$num";
