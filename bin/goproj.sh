#!/bin/bash

CSCOPE_FILE=cscope.file
if [ -n "$1" ]; then
	echo "Source code directory: " $1
	echo "Create file map : " $CSCOPE_FILE
    # you can modify here for your source file suffix
    # Android
	find $1 -name "*.aidl" \
            -o -name "*.cc" \
            -o -name "*.h" \
            -o -name "*.c" \
            -o -name "*.cpp" \
            -o -name "*.java" \
            -o -name "*.mk" \
            > $CSCOPE_FILE
	cscope -bkq -i $CSCOPE_FILE
	ctags -R --exclude=.svn --exclude=.git
else
	echo "Please key-in path of project"
fi

