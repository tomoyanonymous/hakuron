# 略記一覧

- AST: Abstract Syntax Tree / 抽象構文木、プログラミング言語のソースコードをコンピューター上で表現するための（主に上流で用いられる）形式の一つ
- CST: Creativity Support Tools / 創造性の補助ツールおよびその研究領域
- DMI: Digital Musical Instrument / コンピューターをシステムの中心とした楽器
- DSL: Domain Specific Language / ドメイン固有言語、画像や音楽などある特定の領域や目的に特化したプログラミング言語
- DSP: Digital Signal Processing / デジタル信号処理
- EUP: End User Programming / ソフトウェアのユーザー自らがプログラミングを行う活動、及びそれを支援するツールの研究領域
- FFT: Fast Fourier Transform / 高速フーリエ変換、計算機上で音声信号を時間領域から周波数領域の表現に変換する離散フーリエ変換（DFT）を高速に計算するためのアルゴリズムの総称
- HCI: Human-Computer Interaction / コンピューターを使うインターフェースの研究領域の総称
- MIDI: Musical Instrument Digital Interface / 電子楽器の相互運用のための共通規格
- NIME: New Interfaces for Musical Expression / 音楽のための新しいインタフェース研究、及びその国際会議
- OSC: Open Sound Control / Wrightによって提唱された音楽のための自由度の高い相互通信プロトコル
- PCM: Pulse Code Modulation / 音圧波形を一定時間ごとに標本化（Sampling）、量子化（Quantization）することで数値の列として音声信号を表現する方式
- PLfM: Programming Language for Music / 音楽のためのプログラミング言語（本稿で独自に定義、1章を参照のこと）
- RtD: Research through Design / デザイン実践を通じた研究
- UGen: Unit Generator / 音楽のためのプログライング言語で広く用いられる、フィルターやオシレーターなどDSPの基礎的な要素の総称
- VM: Virtual Machine / ソフトウェア上で定義された仮想機械

# 音楽プログラミング言語一覧

- ChucK : Ge Wangが開発した、サンプル単位での正確な処理を可能にするstrongly-timedというコンセプトの言語。ライブコーディング演奏が可能で、miniAudicleという統合開発環境を用いることが多い。
- CSound : MUSIC Nシリーズの後継として開発された音楽プログラミング環境。実装言語をFortranからCに移したのでこの名前になっている。MUSICシリーズ同様、Score、Orchestra、Instrumentというレイヤー分けされた内部言語を持つ構造と、Blueなど複数の統合開発環境が存在することが特徴。
- Extempore : Andrew Sorensenが開発した、LISPをベースにしたライブコーディングに特化した言語。前進としてSchemeをベースにしたImpromptuがある。Extempore自体はSchemeとxtlangと呼ばれる独自の拡張言語の2つで構成される。
- Faust : Functional Audio Stream/フランスのの研究所GRAMEで開発されているブロック・ダイアグラム代数（Block Diagram Algebra）という抽象化形式を基にしたDSPに特化した言語。様々な言語でUGenとして利用できたり、Webブラウザやマイクロコントローラ上でも動作する
- Gwion: Jérémie Astorが開発する、ChucKを発展させた言語。第一級関数が使えるなど、プログラミング言語としての抽象度を高めている。
- Kronos : Vesa Noriloが開発する、Faustをより読みやすく高度な抽象化を可能にしたような言語。Faust同様Webなど広い環境で動作するほか、非同期的な処理も実現できる。Veneerというビジュアルプログラミング環境も備えている。
- LC : Hiroki Nishinoが開発した、ChucKを発展させたmostly-strongly-timedというコンセプトの言語。同期/非同期の処理をユーザーが明確に制御できるほか、処理が間に合わなかった際のタイムアウト処理が記述できるといった特徴がある。
- Max : IRCAMでMiller Packetteにより開発され、現在デヴィッド・ジカレリによるCycling’74が販売する、音や映像処理のためのビジュアルプログラミング環境。
- MUSIC N: Max Mathewsらによって開発された初期の非リアルタイムなコンピューター音楽プログラミング環境で、IからV、およびIVの派生バージョンである4BF、360、10、11といった複数のシリーズを指す総称でNというワードを用いる。
- mimium: 筆者が開発している、ラムダ計算を基盤にしたミニマルな音楽のためのプログラミング言語。
- Nyquist: Roger Dannenbergが90年代に開発した関数型ライクに記述できる音声処理言語。現在単体ではほぼ使われていないが、オープンソースの音声編集ソフトウェアAudacityの中でスクリプティング言語として利用できる。
- Puredata : Miller PucketteがMaxの後にオープンソース・ソフトウェアとして開発し続けているビジュアルプログラミング環境。
- SuperCollider: McCartneyによって開発された、SmallTalk等に影響を受けた言語。バージョン3以降はサーバー/クライアントがネットワークを介して連携する構造を取ることで、他の言語からプログラマブルに制御できる音声合成エンジンとしても用いられている。
- Sonic Pi: Sam Aaronによって開発された、教育を一つの主眼においたライブコーディング環境。Rubyで記述できるSuperColliderクライアント。
- Soul : 音楽制作ソフトウェア用のフレームワークJUCEを開発したJulian Storerを中心に、JUCEを保有していたROLI社が開発する信号処理記述に特化した言語。2021年5月で開発が停止している。
- TidalCycles: Alex Mcleanによって開発された、Haskell上でリズムや音程、グラフィックなどあらゆるものをパターンとして抽象化するライブコーディング環境。元々はTidalという名前。SuperColliderクライアントの一つ。
- Vult: Leonardo Ragna Luizが開発する組み込みをターゲットとした信号処理記述のための言語。OCamlで記述されている。

# 汎用プログラミング言語一覧

- LISP : 1960年代にマッカーシーらによって作られた、関数やデータを含めたあらゆる表現をS式と呼ばれる括弧で括る記法で表現する言語、およびその系列の言語。代表的なものとしてCommon LispやScheme、Racket、Clojureなどがある。