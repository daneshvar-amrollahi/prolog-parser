# prolog-parser

This is a parser for prolog built with the [BNFC](https://github.com/BNFC/bnfc) compiler construction tool in Java that requires [JLex](https://www.cs.princeton.edu/~appel/modern/java/JLex/) and [CUP](http://www2.cs.tum.edu/projects/cup/).

## Build Instructions

1. Make sure you have [BNFC](https://github.com/BNFC/bnfc) installed.

2. Generate parser files + Makefile:
    ```
    $ bnfc -m --java prolog.cf
    ```

3. Compile JLex to `.class` files:
    ```
    $ javac JLex/Main.java
    ```

4. You can download `CUP 0.11b` from the official webpage: [http://www2.cs.tum.edu/projects/cup/](http://www2.cs.tum.edu/projects/cup/). Those will be `.jar` files and you have to manually unzip them into `.class` files (`$ unzip <filename>.jar`) by yourself. However, we have already done this unzipping process and stored the files in the `java_cup/` directory in this repository. 

5. Build the parser:
    ```
    $ make
    javac -sourcepath . prolog/Absyn/Database.java prolog/Absyn/Db.java prolog/Absyn/Clause.java prolog/Absyn/Fact.java prolog/Absyn/Rule.java prolog/Absyn/Directive.java prolog/Absyn/Query.java prolog/Absyn/Predicate.java prolog/Absyn/APred.java prolog/Absyn/CPred.java prolog/Absyn/EPred.java prolog/Absyn/Expr.java prolog/Absyn/EqExpr.java prolog/Absyn/EqqExpr.java prolog/Absyn/NeqExpr.java prolog/Absyn/NeqqExpr.java prolog/Absyn/DisjExpr.java prolog/Absyn/NotExpr.java prolog/Absyn/GtExpr.java prolog/Absyn/LtExpr.java prolog/Absyn/GeqExpr.java prolog/Absyn/LeqExpr.java prolog/Absyn/AddExpr.java prolog/Absyn/SubExpr.java prolog/Absyn/MultExpr.java prolog/Absyn/DivExpr.java prolog/Absyn/ModExpr.java prolog/Absyn/ParExpr.java prolog/Absyn/NumExpr.java prolog/Absyn/VarExpr.java prolog/Absyn/StrExpr.java prolog/Absyn/Exp.java prolog/Absyn/Term.java prolog/Absyn/TAtom.java prolog/Absyn/VarT.java prolog/Absyn/Complex.java prolog/Absyn/TList.java prolog/Absyn/TNum.java prolog/Absyn/Atom.java prolog/Absyn/Atm.java prolog/Absyn/EAtm.java prolog/Absyn/Var.java prolog/Absyn/V.java prolog/Absyn/A.java prolog/Absyn/List.java prolog/Absyn/Empty.java prolog/Absyn/Enum.java prolog/Absyn/Cons.java prolog/Absyn/ConsV.java prolog/Absyn/ListClause.java prolog/Absyn/ListPredicate.java prolog/Absyn/ListTerm.java
    java  JLex.Main  prolog/Yylex
    Processing first section -- user code.
    Processing second section -- JLex declarations.
    Processing third section -- lexical rules.
    Creating NFA machine representation.
    NFA comprised of 171 states.
    Working on character classes.:::.::::..:....:.:.:.:........::.::::::::::::.:......:.......:..
    NFA has 31 distinct character classes.
    Creating DFA transition table.
    Working on DFA states...............................................................
    Minimizing DFA transition table.
    45 states after removal of redundant states.
    Outputting lexical analyzer code.
    java  java_cup.Main -nopositions -expect 100 prolog/_cup.cup
    Warning : *** Reduce/Reduce conflict found in state #63
    between Expr8 ::= Expr9 (*) 
    and     Expr8 ::= Expr8 _SYMB_11 Expr9 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #63
    between Expr8 ::= Expr9 (*) 
    and     Expr9 ::= Expr9 (*) _SYMB_12 Expr10 
    under symbol _SYMB_12
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #63
    between Expr8 ::= Expr8 _SYMB_11 Expr9 (*) 
    and     Expr9 ::= Expr9 (*) _SYMB_12 Expr10 
    under symbol _SYMB_12
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #18
    between Expr13 ::= Expr14 (*) 
    and     Expr14 ::= Expr14 (*) _SYMB_17 Expr15 
    under symbol _SYMB_17
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #49
    between Expr15 ::= Expr16 (*) 
    and     Expr15 ::= Expr15 _SYMB_24 Expr16 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #21
    between Expr10 ::= Expr11 (*) 
    and     Expr11 ::= Expr11 (*) _SYMB_14 Expr12 
    under symbol _SYMB_14
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #32
    between Atom ::= LIdent (*) 
    and     Expr16 ::= LIdent (*) 
    under symbols: {_SYMB_0, _SYMB_22, _SYMB_23}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #12
    between Expr2 ::= Expr3 (*) 
    and     Expr3 ::= Expr3 (*) _SYMB_6 Expr4 
    under symbol _SYMB_6
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #26
    between Expr16 ::= Expr (*) 
    and     Predicate ::= Expr (*) 
    under symbols: {_SYMB_0, _SYMB_22, _SYMB_23}
    Resolved in favor of the second production.

    Warning : *** Reduce/Reduce conflict found in state #45
    between Expr13 ::= Expr14 (*) 
    and     Expr13 ::= Expr13 _SYMB_16 Expr14 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #45
    between Expr13 ::= Expr14 (*) 
    and     Expr14 ::= Expr14 (*) _SYMB_17 Expr15 
    under symbol _SYMB_17
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #45
    between Expr13 ::= Expr13 _SYMB_16 Expr14 (*) 
    and     Expr14 ::= Expr14 (*) _SYMB_17 Expr15 
    under symbol _SYMB_17
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #41
    between Expr11 ::= Expr11 _SYMB_14 Expr12 (*) 
    and     Expr11 ::= Expr12 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the first production.

    Warning : *** Shift/Reduce conflict found in state #41
    between Expr11 ::= Expr11 _SYMB_14 Expr12 (*) 
    and     Expr12 ::= Expr12 (*) _SYMB_15 Expr13 
    under symbol _SYMB_15
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #41
    between Expr11 ::= Expr12 (*) 
    and     Expr12 ::= Expr12 (*) _SYMB_15 Expr13 
    under symbol _SYMB_15
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #59
    between Expr6 ::= Expr7 (*) 
    and     Expr6 ::= _SYMB_9 Expr7 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #59
    between Expr6 ::= Expr7 (*) 
    and     Expr7 ::= Expr7 (*) _SYMB_10 Expr8 
    under symbol _SYMB_10
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #59
    between Expr6 ::= _SYMB_9 Expr7 (*) 
    and     Expr7 ::= Expr7 (*) _SYMB_10 Expr8 
    under symbol _SYMB_10
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #56
    between Expr16 ::= Expr (*) 
    and     Expr18 ::= _SYMB_2 Expr (*) _SYMB_3 
    under symbol _SYMB_3
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #93
    between Expr1 ::= Expr2 (*) 
    and     Expr1 ::= Expr1 _SYMB_4 Expr2 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #93
    between Expr1 ::= Expr2 (*) 
    and     Expr2 ::= Expr2 (*) _SYMB_5 Expr3 
    under symbol _SYMB_5
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #93
    between Expr1 ::= Expr1 _SYMB_4 Expr2 (*) 
    and     Expr2 ::= Expr2 (*) _SYMB_5 Expr3 
    under symbol _SYMB_5
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #43
    between Expr12 ::= Expr13 (*) 
    and     Expr12 ::= Expr12 _SYMB_15 Expr13 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #43
    between Expr12 ::= Expr13 (*) 
    and     Expr13 ::= Expr13 (*) _SYMB_16 Expr14 
    under symbol _SYMB_16
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #43
    between Expr12 ::= Expr12 _SYMB_15 Expr13 (*) 
    and     Expr13 ::= Expr13 (*) _SYMB_16 Expr14 
    under symbol _SYMB_16
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #61
    between Expr7 ::= Expr7 _SYMB_10 Expr8 (*) 
    and     Expr7 ::= Expr8 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the first production.

    Warning : *** Shift/Reduce conflict found in state #61
    between Expr7 ::= Expr7 _SYMB_10 Expr8 (*) 
    and     Expr8 ::= Expr8 (*) _SYMB_11 Expr9 
    under symbol _SYMB_11
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #61
    between Expr7 ::= Expr8 (*) 
    and     Expr8 ::= Expr8 (*) _SYMB_11 Expr9 
    under symbol _SYMB_11
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #17
    between Expr ::= Expr1 (*) 
    and     Expr1 ::= Expr1 (*) _SYMB_4 Expr2 
    under symbol _SYMB_4
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #16
    between Expr1 ::= Expr2 (*) 
    and     Expr2 ::= Expr2 (*) _SYMB_5 Expr3 
    under symbol _SYMB_5
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #20
    between Expr11 ::= Expr12 (*) 
    and     Expr12 ::= Expr12 (*) _SYMB_15 Expr13 
    under symbol _SYMB_15
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #22
    between Expr9 ::= Expr10 (*) 
    and     Expr10 ::= Expr10 (*) _SYMB_13 Expr11 
    under symbol _SYMB_13
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #4
    between Expr7 ::= Expr8 (*) 
    and     Expr8 ::= Expr8 (*) _SYMB_11 Expr9 
    under symbol _SYMB_11
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #7
    between Expr4 ::= Expr5 (*) 
    and     Expr5 ::= Expr5 (*) _SYMB_8 Expr6 
    under symbol _SYMB_8
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #19
    between Expr12 ::= Expr13 (*) 
    and     Expr13 ::= Expr13 (*) _SYMB_16 Expr14 
    under symbol _SYMB_16
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #5
    between Expr6 ::= Expr7 (*) 
    and     Expr7 ::= Expr7 (*) _SYMB_10 Expr8 
    under symbol _SYMB_10
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #39
    between Expr10 ::= Expr11 (*) 
    and     Expr10 ::= Expr10 _SYMB_13 Expr11 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #39
    between Expr10 ::= Expr11 (*) 
    and     Expr11 ::= Expr11 (*) _SYMB_14 Expr12 
    under symbol _SYMB_14
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #39
    between Expr10 ::= Expr10 _SYMB_13 Expr11 (*) 
    and     Expr11 ::= Expr11 (*) _SYMB_14 Expr12 
    under symbol _SYMB_14
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #101
    between Expr5 ::= Expr6 (*) 
    and     Expr5 ::= Expr5 _SYMB_8 Expr6 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Reduce/Reduce conflict found in state #97
    between Expr3 ::= Expr4 (*) 
    and     Expr3 ::= Expr3 _SYMB_6 Expr4 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #97
    between Expr3 ::= Expr4 (*) 
    and     Expr4 ::= Expr4 (*) _SYMB_7 Expr5 
    under symbol _SYMB_7
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #97
    between Expr3 ::= Expr3 _SYMB_6 Expr4 (*) 
    and     Expr4 ::= Expr4 (*) _SYMB_7 Expr5 
    under symbol _SYMB_7
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #11
    between Expr3 ::= Expr4 (*) 
    and     Expr4 ::= Expr4 (*) _SYMB_7 Expr5 
    under symbol _SYMB_7
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #55
    between Expr15 ::= Expr16 (*) 
    and     Expr16 ::= _SYMB_2 Expr16 (*) _SYMB_3 
    under symbol _SYMB_3
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #47
    between Expr14 ::= Expr15 (*) 
    and     Expr14 ::= Expr14 _SYMB_17 Expr15 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #47
    between Expr14 ::= Expr15 (*) 
    and     Expr15 ::= Expr15 (*) _SYMB_24 Expr16 
    under symbol _SYMB_24
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #47
    between Expr14 ::= Expr14 _SYMB_17 Expr15 (*) 
    and     Expr15 ::= Expr15 (*) _SYMB_24 Expr16 
    under symbol _SYMB_24
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #35
    between Expr9 ::= Expr10 (*) 
    and     Expr9 ::= Expr9 _SYMB_12 Expr10 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #35
    between Expr9 ::= Expr10 (*) 
    and     Expr10 ::= Expr10 (*) _SYMB_13 Expr11 
    under symbol _SYMB_13
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #35
    between Expr9 ::= Expr9 _SYMB_12 Expr10 (*) 
    and     Expr10 ::= Expr10 (*) _SYMB_13 Expr11 
    under symbol _SYMB_13
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #99
    between Expr4 ::= Expr5 (*) 
    and     Expr4 ::= Expr4 _SYMB_7 Expr5 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #99
    between Expr4 ::= Expr5 (*) 
    and     Expr5 ::= Expr5 (*) _SYMB_8 Expr6 
    under symbol _SYMB_8
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #99
    between Expr4 ::= Expr4 _SYMB_7 Expr5 (*) 
    and     Expr5 ::= Expr5 (*) _SYMB_8 Expr6 
    under symbol _SYMB_8
    Resolved in favor of shifting.

    Warning : *** Reduce/Reduce conflict found in state #95
    between Expr2 ::= Expr3 (*) 
    and     Expr2 ::= Expr2 _SYMB_5 Expr3 (*) 
    under symbols: {_SYMB_0, _SYMB_3, _SYMB_4, _SYMB_5, _SYMB_6, _SYMB_7, _SYMB_8, _SYMB_10, _SYMB_11, _SYMB_12, _SYMB_13, _SYMB_14, _SYMB_15, _SYMB_16, _SYMB_17, _SYMB_22, _SYMB_23, _SYMB_24}
    Resolved in favor of the second production.

    Warning : *** Shift/Reduce conflict found in state #95
    between Expr2 ::= Expr3 (*) 
    and     Expr3 ::= Expr3 (*) _SYMB_6 Expr4 
    under symbol _SYMB_6
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #95
    between Expr2 ::= Expr2 _SYMB_5 Expr3 (*) 
    and     Expr3 ::= Expr3 (*) _SYMB_6 Expr4 
    under symbol _SYMB_6
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #33
    between Expr8 ::= Expr9 (*) 
    and     Expr9 ::= Expr9 (*) _SYMB_12 Expr10 
    under symbol _SYMB_12
    Resolved in favor of shifting.

    Warning : *** Shift/Reduce conflict found in state #15
    between Expr14 ::= Expr15 (*) 
    and     Expr15 ::= Expr15 (*) _SYMB_24 Expr16 
    under symbol _SYMB_24
    Resolved in favor of shifting.

    ------- CUP v0.11b 20160615 (GIT 4ac7450) Parser Generation Summary -------
    0 errors and 59 warnings
    32 terminals, 29 non-terminals, and 67 productions declared, 
    producing 104 unique parse states.
    0 terminals declared but not used.
    0 non-terminals declared but not used.
    0 productions never reduced.
    59 conflicts detected (100 expected).
    Code written to "parser.java", and "sym.java".
    ---------------------------------------------------- (CUP v0.11b 20160615 (GIT 4ac7450))
    mv parser.java sym.java prolog/
    javac -sourcepath . prolog/Yylex.java prolog/parser.java prolog/sym.java
    javac -sourcepath . prolog/PrettyPrinter.java
    javac -sourcepath . prolog/Test.java
    javac -sourcepath . prolog/VisitSkel.java
    javac -sourcepath . prolog/ComposVisitor.java
    javac -sourcepath . prolog/AbstractVisitor.java
    javac -sourcepath . prolog/FoldVisitor.java

    ```

6. Run a benchmark:
    ```
    $ java prolog.Test < benchmarks/test1.pl 

    Parse Succesful!

    [Abstract Syntax]

    (Db [(Fact (CPred (Atm "child") [(TAtom (Atm "bart")), (TAtom (Atm "homer"))])), (Fact (CPred (Atm "child") [(TAtom (Atm "homer")), (TAtom (Atm "abe"))])), (Fact (CPred (Atm "child") [(TAtom (Atm "maggie")), (TAtom (Atm "homer"))])), (Rule (CPred (Atm "grandchild") [(VarT (V "X")), (VarT (V "Y"))]) [(CPred (Atm "child") [(VarT (V "X")), (VarT (V "Z"))]), (CPred (Atm "child") [(VarT (V "Z")), (VarT (V "Y"))])])]) 

    [Linearized Tree]

    child (bart, homer) . child (homer, abe) . child (maggie, homer) . grandchild (X, Y) :- child (X, Z), child (Z, Y) .

    ```