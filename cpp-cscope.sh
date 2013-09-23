#!/bin/sh
#-----------------------------------------#
# damonhao 2013/09/22
# Function: 
# Generate ctags for "*.h", "*.c", "*.cc" and "*.cpp" files
# in the current directory

# Create command cpp-cscope
# #sudo cp cpp-cscope.sh /usr/bin/cpp-cscope
# #chmod +x /usr/bin/cpp-cscope

#Usage: cpp-cscope
#-----------------------------------------#
find . -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files
cscope -bkq -i cscope.files
#ctags -R
#The symbol "." at the tail means current file.When you execute it as a normal 
#command, you can just ignore it because it is default value, but when you commit it
#in vim,you can't, that is, :!ctags -R --sort=yes --c++-kinds=+pl --fields=+ialS --extra=+q .
ctags -R --sort=yes --c++-kinds=+pl --fields=+ialS --extra=+q .
