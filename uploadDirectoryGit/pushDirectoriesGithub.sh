#!/usr/bin/env bash
DIRS=0;
for D in `find . -type d -maxdepth 1`
do
    if  [[ $D == ./"$3" ]] ;
    then
        DIRS=$((DIRS+1))
        REPONAME=$(echo $D| cut -c 3-)
        echo $REPONAME
        ./createRepoAndInputPwd.sh $REPONAME $1 $2
    fi
done
echo $DIRS