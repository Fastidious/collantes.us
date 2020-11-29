#!/bin/bash
YEAR_FOR_POST=`date +"%Y-%m-%d"`
if [ -z "$1" ]; then
	echo "You must enter name of post, in new-post-format."
	echo "For example: new another-post-again"
else
	if [ "$1" == "build" ]; then
		rm -rf ../fastidious.github.com/*
		hugo -d ../fastidious.github.com/
	else
		hugo new content/$YEAR_FOR_POST-$1.md
		open -a typora content/$YEAR_FOR_POST-$1.md
	fi
fi
