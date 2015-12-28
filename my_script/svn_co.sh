# !/bin/sh

WINDER_SVN_IP=220.136.172.226


if [ -z "$1" ]; then
    echo "$0: missing parameter!"
    exit 1
fi

if [ -z "$2" ]; then
	svn co svn+ssh://jonathan@$WINDER_SVN_IP/home/svnroot/winder_projects/$1
else
	svn co $1 svn+ssh://jonathan@$WINDER_SVN_IP/home/svnroot/winder_projects/$2
fi
