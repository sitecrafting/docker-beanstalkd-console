#!/bin/sh

if [ -z $2 ]; then
  echo 'usage: bump.sh CURRENT_VERSION NEW_VERSION'
  exit 1
fi

cat Dockerfile | sed "s/$1/$2/g" > Dockerfile.new
mv Dockerfile.new Dockerfile

echo "Replaced $1 with $2:"
git diff
