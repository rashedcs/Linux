
function addUser()
{
   	grep -q "$username" /etc/passwd
	  if [ $? -eq $SUCCESS ] 
    then
        echo "$user already  exists "
    else
        useradd $password $username
        echo "$user does not exists"
    fi
}

read  user 
read password
checkUser $user

