#!/bin/sh
echo '\n'`date`
cd ~/Sync/Sublime

echo `date` >> git.log
git diff --name-only >> git.log
echo "------------\n" >> git.log

git add . && git commit -m "sync .." && git push
