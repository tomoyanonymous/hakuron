コードの置き換え

```regex
\\begin\{lstlisting\}\[(.*)caption=(.*),label=(.*)\]\n([\s\S]*?)\\end\{lstlisting\}
```rust\n$4\n\n: $2 {#$3}
```