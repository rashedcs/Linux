
function changePassword()
{
   	grep -q "$username" /etc/passwd
	if [ $? -eq $SUCCESS ] 
    then
        echo "$username:$password" | chpasswd
    else
        echo "$user does not exists"
    fi
}

read  user 
read password
checkUser $user

