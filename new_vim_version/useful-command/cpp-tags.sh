#!/bin/sh
#-----------------------------------------#
# damonhao 2014/07/13
# Function: 
# Generate cpp tags for "*.h", "*.c", "*.cc" and "*.cpp" files
# in the current directory

# Create command cpp-tags,
# you can put the executable file in anyother path that it can be found;
# #cp cpp-tags.sh /usr/bin/cpp-tags
# #chmod +x /usr/bin/cpp-tags

#Usage: cpptscope
#-----------------------------------------#
# generate tags
ctags -R --sort=yes --c++-kinds=+pl --fields=+ialS --extra=+q 
# original is 
# ctags -R --sort=yes --c++-kinds=+pl --fields=+ialS --extra=+q . 
# we ignore period ".", so it act normal in vim command mode;
