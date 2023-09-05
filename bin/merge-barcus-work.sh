#!/usr/bin/env sh

CWD=$(pwd)
DIR='barcus-bareos'

cmd_check() {
  cmd=$1
  if ! command -v "$cmd" > /dev/null
  then
    echo "$cmd is require and could not be found. Please install it."
    exit 1
  fi
}

cmd_check 'git'

if ! git filter-repo --version > /dev/null 2>&1
then
    echo "git-filter-repo is require and could not be found. Please install it."
    exit 2
fi

cd /tmp || exit

git clone https://github.com/barcus/bareos.git "${DIR}"
cd "${DIR}" || exit

git remote rm origin

git filter-repo --force\
  --path-rename LICENSE:barcus/LICENSE\
  --path-rename docker-compose-alpine-pgsql.yml:barcus/compose.yaml\

git filter-repo --force\
  --path barcus

git reset --hard
git gc --aggressive 
git prune
git clean -fd

git add barcus
git commit -m 'Adjustments of Barcus files'

cd "${CWD}" || exit

git remote add barcus "/tmp/${DIR}"
git fetch barcus
git rebase barcus/master
git reset -- LICENSE
git checkout LICENSE 

git remote remove barcus
rm -rf "/tmp/${DIR}"
