if [ -z "$1" ]; then
    echo "$0: missing parameter!"
    echo "==> my_git_repo_create.sh repoName_to_be_created.git"
    exit 1
fi

mkdir $1
cd $1
git init --bare --shared
touch git-daemon-export-ok
git config core.sharedRepository true
git config receive.denyNonFastforwards true

echo "Repo: $1 has been created."


