#!/bin/sh
echo '\n'`date`
cd ~/sync/sublime

echo `date` >> git.log
git diff --name-only >> git.log
echo "------------\n" >> git.log

git add . && git commit -m "sync .." && git push
