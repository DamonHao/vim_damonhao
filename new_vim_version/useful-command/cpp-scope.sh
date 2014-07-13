#!/bin/sh
#-----------------------------------------#
# damonhao 2014/07/13
# Function: 
# Apply cscope for "*.h", "*.c", "*.cc" and "*.cpp" files
# in the current directory. It can be used in c or c++ project;

# Create command cpp-scope
# you can put the executable file in anyother path that it can be found;
# #cp cpp-scope.sh /usr/bin/cpp-scope
# #chmod +x /usr/bin/cpp-scope

# generate tags references
find . -name "*.h" -o -name "*.c" -o -name "*.cc" -o -name "*.cpp" > cscope.files
cscope -bkq -i cscope.files
