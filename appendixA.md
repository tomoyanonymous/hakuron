<!-- # mimiumのEBNFによるシンタックス定義 -->

[@lst:bnfdef]に、mimium言語（バージョン0.4.0時点）のシンタックス定義をEBNF記法で示した。
ここでは演算子の優先順位をつけていないが、実際の優先順位は一般的なプログラミング言語の優先順位に準じた上で、`@`演算子が一番低い優先順位となっている。


\begin{lstlisting}[float,floatplacement=h,caption=mimiumのシンタックスのEBNFによる定義。,label=lst:bnfdef]
  number ::= ?numbers?
  symbol ::= ?all_alnum_and_underscore?
  string ::= ?double_quote?<symbol>?double_quote?

  rvar ::= <symbol>
  lvar ::= <symbol> (":"<type>)?
  lvar_args ::= <lvar> | <lvar_args> "," <lvar> 
  binop ::= "+"|"-"|"*"|"/"|"^"|"=="| "!="|">="|"<="|">"|"<"|"&&"| "||"
  uniop ::= "-" | "!" 
  infix ::= <expr> <binop> <expr> | <uniop> <expr>
  field ::= <expr>"."<symbol>
  app ::= <expr>"(" <expr_args> ")"
  lambda ::= "|" <lvar_args> "|" ("->" <type>)? <expr>

  if ::=  "if" "("<expr>")" <expr> ("else" <expr>)?
  block ::= "{"<statements>"}"
  expr ::= "self"|"now"|<number>|<string>|<rvar>| <infix>|<field>|<app>| <lambda>|<if>|<block>
  expr_args ::= <expr> | <expr_args> "," <expr>
  statements ::= <statement> | <statements> ?linebreak? <statement>
  statement ::= <app>|<schedule>|<fndef>| <assign>|<lettuple>|<return>| <typealias>
  schedule ::= expr "@" expr
  fndef ::=  "fn" <symbol> "("<lvar_args>")" ("->" <type>)? <block>
  assign ::= <lvar> "=" <expr>
  lettuple ::= <lvar_args> "=" <expr>
  return ::= "return" <expr>

  type ::= "void"|"float"|"string"|<symbol>| <tupletype>|<fntype>|<recordtype>
  types ::= <type> | <types>","<type>
  tupletype ::= "()" | "("<types>")"
  fntype ::= <tupletype>"->"<type>
  recordtype ::= "{"<typekeyvals>"}"
  typekeyvals ::= <typekeyval> | <typekeyvals>","<typekeyval>
  typekeyval ::= <string>":"<type>
  typealias ::= "type" <symbol> "=" <type>

  program ::= <statements>
\end{lstlisting}
