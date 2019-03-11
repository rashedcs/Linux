
function checkUser()
{
    grep $user /etc/passwd > /dev/null
    if [ $? -eq 1 ] 
    then
        echo "$user does not exists "
    else
        echo "$user does exists"
    fi
}

read user;
checkUser $user;
