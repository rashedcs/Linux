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




Mehedi	01	WDE	25000
Arafat	02	WDE	27000
Baki	04	SDE	30000
Mahbub	05	ADE	29000
Nazmul	06	SDE	24000
Masum	07	WDE	23500
Rashed	08	SAD	25000
Ashraf	09	WDE	26000
Shuvo	10	SDE	27000
Antor	11	SAD	24000
Shabuj	12	WDE	28000
Hakkani	13	WDE	24500
