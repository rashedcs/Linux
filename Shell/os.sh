awk '{
     sum = ($2 + $3 + $4)/3
     if(sum >= 50 && sum<60)       print $1,$2,$3,$4, ": C"
     else if(sum>=60 && sum<80)    print $1,$2,$3,$4, ": B"
     else if(sum>=80)              print $1,$2,$3,$4, ": A" 
     else                          print $1,$2,$3,$4, ": FAIL" 
 }' file > out.txt
