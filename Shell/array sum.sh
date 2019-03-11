function arraySum 
{
        sum=0
        for i in ${a[@]};
        do
              sum=`expr $sum + $i`  
        done
        echo $sum
}

a=(7 2 3 9)
echo -n "Sum is = " 
arraySum ${a[@]}
