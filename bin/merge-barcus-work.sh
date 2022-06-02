#!/usr/bin/env sh

CWD=$(pwd)
DIR='barcus-bareos'

cmd_check() {
  cmd=$1
  if ! command -v "$cmd" > /dev/null
  then
    echo "$cmd is require and could not be found. Please install it."
    exit
  fi
}

cmd_check 'git'

if ! git filter-repo --version > /dev/null
then
    echo "git-filter-repo is require and could not be found. Please install it."
    exit
fi

cd /tmp || exit

git clone https://github.com/barcus/bareos.git "${DIR}"
cd "${DIR}" || exit

git remote rm origin

git filter-repo --force --path LICENSE --path docker-compose-alpine-pgsql.yml

git reset --hard
git gc --aggressive 
git prune
git clean -fd

mkdir barcus
git mv LICENSE docker-compose-alpine-pgsql.yml barcus
git commit -m 'move to a subdir'

cd "${CWD}" || exit

git remote add barcus "/tmp/${DIR}"
git merge barcus/master
git reset -- LICENSE
git checkout LICENSE 

rm -rf "/tmp/${DIR}"
