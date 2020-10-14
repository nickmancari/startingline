#!/bin/bash
git add .
echo How do you want to label this commit?
#
read COMMENT
#
git commit -am "$COMMENT"
#
git push
