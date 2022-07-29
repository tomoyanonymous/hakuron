#!/bin/zsh
for p in $(find img/*.pdf)
do 
newname=$(echo "$p" | sed  -E 's/(.*)\.pdf/\1.png/')
echo "convert $p to $newname..."
convert $p $newname
rm -rf $p
done