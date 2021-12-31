#!/bin/bash
count=0
for var in $(find src/*.md | grep -E "src/chapter(.).md")
do
num=$(pandoc -s $var -t plain | wc -m)
echo "$var: $num"
count=`expr $count + $num`
done
echo "total: $count"
# pandoc -s $(find src/*.md | grep -E "src/chapter(.).md") -t plain | wc -m