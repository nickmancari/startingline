#!/bin/bash
git add .
echo What comment do you want to label this commit?
#
read COMMENT
#
git commit -am '$COMMENT'
#
git push
