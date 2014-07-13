#!/bin/sh
#-----------------------------------------#
# damonhao 2014/07/13
# Function: 
# Generate cpp tags for "*.h", "*.c", "*.cc" and "*.cpp" files
# in the current directory

# Create command ccpp-tags,
# you can put the executable file in anyother path that it can be found;
# #cp ccpp-tags.sh /usr/bin/ccpp-tags
# #chmod +x /usr/bin/ccpp-tags

#Usage: cpptscope
#-----------------------------------------#
# generate tags
ctags -R --sort=yes --c-kinds=+p --c++-kinds=+p --fields=+iaS --extra=+q
# original is 
# ctags -R --sort=yes --c++-kinds=+pl --fields=+ialS --extra=+q . 
# we ignore period ".", so it act normal in vim command mode;
