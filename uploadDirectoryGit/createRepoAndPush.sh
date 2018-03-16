#!/usr/bin/env bash

curl -u "$2" https://api.github.com/user/repos -d '{"name":"'"$1"'"}'
cd $1
git init
git add .
git commit -m "First commit"
git remote add origin https://github.com/meji92/$1
git push origin master
cd ..