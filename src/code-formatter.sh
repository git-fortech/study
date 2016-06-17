#! /bin/bash


for f in $(find . -name '*.c' -or -name '*.cpp' -or -name '*.h' -or -name '*.hpp' -or -name '*.cc' -type f); do
    astyle --style=ansi $f
done


# after formate the code,we need to rm '*.orig' files
for f in $(find . -name '*.orig' -type f); do
    rm $f
done

