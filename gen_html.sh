#!/bin/zsh
for md in $(find *.md)
do 
echo "processing $md"
offset=0
if [[ "$md" =~ chapter[0-9].md ]]
then
offset=$(echo "$md" | sed  -E 's/chapter([0-9])\.md/\1/')
# offset=${BASH_REMATCH[0]}
echo ${offset}
fi
echo "heading offset is $offset"
pandoc $md --number-offset=$(($offset)) --highlight-style=espresso --shift-heading-level-by=1 --filter pandoc-crossref -M "crossrefYaml=./pandoc-crossref-config.yml" --citeproc  --bibliography=ref.bib --template=chapter_template.html.template -o  ${md%.*}_rendered.html
done


