# 松浦知也 博士論文リポジトリ

vscode devcontainer で開く。

`make -j`で諸々まとめてビルド

中身はlatexmkrcとmakefileを参照。

pandocでmdファイルをchapterごとに一度texに出力、template.texでそれぞれinput使って読み込んでいる。

図表のレイアウトはMarkdownに直接latexを書いてるが、一応HTML出力も想定してコメントでmdのコマンドも残しておく

pandocは各見出しの名前からハッシュでpdf内リンクを作ろうとするので、章間で共通する（「小括」とか）おんなじタイトルを使うとバッティングする。ので{#sec:summary1}とかのクラスを与える事


## biblatex-japaneseのセットアップ

自動化する方法が思いつかなかったのでメモ。最終的にDockerのパッケージまとめたい

こいつがどうしてもlualatexでないと動作しなかったためにlualatexにしている、遅いので本当はuplatexがいい

```sh
ln -s /workdir/biblatex-japanese/  /usr/local/texlive/texmf-local/tex/latex/local/biblatex-japanese
mktexlsr
kpsewhich biblatex-japanese.sty ＃これでチェックできる
```

## Web向けリポジトリの切り出し作業

```bash
git subtree split --prefix src --onto subtree-src/master -b subtree-src/master
```

## その他

`./charcount.sh`でpandocのプレーンテキスト出力を使って文字数カウント
