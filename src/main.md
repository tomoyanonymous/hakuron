# 序論

## structure of the thesis

## contribution of the thesis

### 音楽プログラミング言語研究の理論的なフレームワークの提供

### ソフトウェア設計におけるメディア研究、インフラストラクチャ研究の視点の提供




##  limitations, not mention

### live coding

### latency and strict realtimeness

# Background A: Computer as a Libre machine

## Key's computer as a meta-medium

### "Programming your own computer"

## Wiser's Ubiquitous computing 

### invisible machines

## Black box of technologies

## Operating System and Time-sharing
現代の、Dynabookよろしく可変的に作られたコンピューターはOSの上でユーザーアプリケーションが動作している。
この時、ユーザープログラムは自分の保存したメモリアドレスが実際の物理アドレスとしてどこにいるのかを知ることはできない。
また、ユーザープログラムはプリエンプティブマルチタスキングなOSの元では、プログラムがいつ実行されるのかを正確に知ることはできない。

キットラーのプロテクト・モード批判

### Multi-tasking and "general-purpose" computer

# Background B:musical medium

## メディアインフラストラクチャの意図的な設計の必要性

### infrastructure studies

### format studies
sterne mp3
format matters
## today's situation of musical medium

### reproduction-tech-based music culture

## specifity of computer music

## object-based format

## anti-"musicking"

コンピューターが偏在していることを前提とした上で、新しい音楽フォーマットのあるべき形を検討する

# Background C: Programming language for Sound Music(PLfSaM)
##  What is PLfMaS?

### What is Programming Language?

### Sampling Theorem

### Stream processing and timed discrete event

### Computer music system(MUSIC-N)

## 6 Elements of Computer Music Language by Dannenberg

- Syntax
- Semantics
- Runtime
	- implicitly means "compiler"(trade-off according to IR)
- Library
- IDE
- Community

## How can we evaluate the programming language for sound as "good?"

### terminology

### ambigious use of "general", "efficient" and "expressive"

- Lazzarini2013
- Brandt2002(Chronic's Tradeoff)

### from the terminology of general-purpose language(Coblenz)

### model of human-in-the-loop system in music programming.

### situating cultural background to the language spec

- CSound's layering "Score" "Orchestra" "Instrument"
- How can we generalize the language as possible?

> The commercial musical software we know today (all made in the West) perform abstractions and generalisations from the perspective of certain popular styles of Western music. (Magunusson thesis 2009)

# Designing mimium

## 基本文法

## Type Systems

## scheduling with @

## signal procesing with self

## Example Codes

# Implementing mimium

## overall architecture

![mimium実行環境アーキテクチャ。](img/mimium-arch-v4-affinity.pdf){#fig:arch}

mimiumの実行環境の基本的アーキテクチャを[@fig:arch]に示す。

## implementation of the compiler

### parser

### Internal representation 1(lambda-like IR)

### internal representation 2(SSA-imperative IR)

### State Variable Analysis

## implementation of the runtime

### scheduler

### JIT engine

### audio driver

## implementation of frontend?


# Reflections from the design and implementation

## Limitations

### Combination of Scheduling and Signal Processing

### Parametric Replication of signal processor

## implications

### multi-stage computation


# Appendix A - History of Sound Programming Language

## Sampling Theorem

引用テスト[@Magnusson2009]