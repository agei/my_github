# !/bin/sh

# filename='ht5F_svn.ip'
# exec < $filename
# read line
# SVN_IP=$line
SVN_IP=${HT5F_SVN_IP}

if [ -z "$1" ]; then
    echo "$0: missing parameter!"
    exit 1
fi

if [ -z "$2" ]; then
	svn co svn+ssh://jonathan@$SVN_IP/home/svnroot/winder_projects/$1
else
	svn co $1 svn+ssh://jonathan@$SVN_IP/home/svnroot/winder_projects/$2
fi
