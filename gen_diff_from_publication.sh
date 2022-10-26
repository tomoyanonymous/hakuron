#!/bin/zsh
pub_hash=e4372e639ca94ba91ec11e6120687745a7b5660d
mkdir tmp
dest="# 出版時からの正誤表（Git履歴より自動生成）\n\n"
for md in $(find chapter*.md -not -name '_index.md' -not -name 'readme.md')
do 
echo "processing $md"
# diff=$(git diff --word-diff HEAD $pub_hash $md) #思ったより読みづらい
diff=$(git diff HEAD $pub_hash $md) 
if [ -n "$diff" ];#contain some diff
then
echo "$md contains diff"
dest+="## ${md%.*}\n\n\`\`\`diff\n$diff\n\`\`\`\n\n"
fi
done
echo $dest >| tmp/revisions.md
pandoc tmp/revisions.md  --metadata title="松浦知也博士論文 正誤表" --highlight-style=espresso  --template=chapter_template.html.template -o  revisions_rendered.html
rm -rf .tmp