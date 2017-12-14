Problem Name : Unable to lock the administration directory (/var/lib/dpkg/) is another process using it?

Solution :
    This should be used as last resort. If you use this carelessly you can end up with a broken system. 
    Please try the other answers first before doing this.
    
    You can delete the lock file with the following command:

    sudo rm /var/lib/apt/lists/lock

    You may also need to delete the lock file in the cache directory

    sudo rm /var/cache/apt/archives/lock
    sudo rm /var/lib/dpkg/lock

Resource : https://askubuntu.com/questions/15433/unable-to-lock-the-administration-directory-var-lib-dpkg-is-another-process
