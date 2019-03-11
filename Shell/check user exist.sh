
function checkUser()
{
    if grep -q  $user /etc/passwd
    then
        echo "$user does  exists "
    else
        echo "$user does not exists"
    fi
}

read user;
checkUser $user;

