#!/bin/sh
echo '\n'
echo `date`
cd /Users/jiewei.ljw/Sublime
echo `date` >> git.log
git diff --name-only >> git.log
git add .
git commit -m "sync .."
git push
