# !/bin/sh

# WINDER_SVN_IP=118.166.251.119

if [ -z "$1" ]; then
    echo "$0: missing parameter!"
    exit 1
fi

if [ -z "$2" ]; then
	svn co svn+ssh://jonathan@$WINDER_SVN_IP/home/svnroot/winder_projects/$1
else
	svn co $1 svn+ssh://jonathan@$WINDER_SVN_IP/home/svnroot/winder_projects/$2
fi
