#input file contain (input.txt) :
A 25 27 50
B 35 37 75
C 75 78 80
D 99 88 76


#Now program : 
awk '{
     sum = ($2 + $3 + $4)/3
     if(sum >= 50 && sum<60)       print $1,$2,$3,$4, ": C"
     else if(sum>=60 && sum<80)    print $1,$2,$3,$4, ": B"
     else if(sum>=80)              print $1,$2,$3,$4, ": A" 
     else                          print $1,$2,$3,$4, ": FAIL" 
 }' input.txt > output.txt




#output file contain (output.txt) :
A 25 27 50 : FAIL
B 35 37 75 : FAIL
C 75 78 80 : B
D 99 88 76 : A
