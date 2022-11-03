# prolog-parser

This is a parser for prolog built with the [BNFC](https://github.com/BNFC/bnfc) compiler construction tool in Java that requires [JLex](https://www.cs.princeton.edu/~appel/modern/java/JLex/) and [CUP](http://www2.cs.tum.edu/projects/cup/).

## Build Instructions

1. Make sure you have [BNFC](https://github.com/BNFC/bnfc) installed.

2. Generate parser files + Makefile:
    ```
    $ bnfc -m --java grammar.cf
    ```

3. Compile JLex to `.class` files:
    ```
    $ javac JLex/Main.java
    ```

4. You can download `CUP 0.11b` from the official webpage: [http://www2.cs.tum.edu/projects/cup/](http://www2.cs.tum.edu/projects/cup/). Those will be `.jar` files and you have to manually unzip them into `.class` files (`$ unzip <filename>.jar`) by yourself. However, we have already done this unzipping process and stored the files in the `java_cup/` directory in this repository. 

5. Build the parser:
    ```
    $ make
    javac -sourcepath . grammar/Absyn/Database.java grammar/Absyn/Db.java grammar/Absyn/Clause.java grammar/Absyn/Fact.java grammar/Absyn/Rule.java grammar/Absyn/Directive.java grammar/Absyn/Predicate.java grammar/Absyn/APred.java grammar/Absyn/CPred.java grammar/Absyn/Term.java grammar/Absyn/TAtom.java grammar/Absyn/VarT.java grammar/Absyn/Complex.java grammar/Absyn/TList.java grammar/Absyn/Atom.java grammar/Absyn/Atm.java grammar/Absyn/EAtm.java grammar/Absyn/Var.java grammar/Absyn/V.java grammar/Absyn/A.java grammar/Absyn/List.java grammar/Absyn/Empty.java grammar/Absyn/Enum.java grammar/Absyn/Cons.java grammar/Absyn/ConsV.java grammar/Absyn/ListClause.java grammar/Absyn/ListPredicate.java grammar/Absyn/ListTerm.java
    java  JLex.Main  grammar/Yylex
    Processing first section -- user code.
    Processing second section -- JLex declarations.
    Processing third section -- lexical rules.
    Creating NFA machine representation.
    NFA comprised of 102 states.
    Working on character classes.:::::::::::::.:......:......:..
    NFA has 18 distinct character classes.
    Creating DFA transition table.
    Working on DFA states.....................................
    Minimizing DFA transition table.
    19 states after removal of redundant states.
    Outputting lexical analyzer code.
    java  java_cup.Main -nopositions -expect 100 grammar/_cup.cup
    ------- CUP v0.11b 20160615 (GIT 4ac7450) Parser Generation Summary -------
    0 errors and 0 warnings
    15 terminals, 10 non-terminals, and 25 productions declared, 
    producing 42 unique parse states.
    0 terminals declared but not used.
    0 non-terminals declared but not used.
    0 productions never reduced.
    0 conflicts detected (100 expected).
    Code written to "parser.java", and "sym.java".
    ---------------------------------------------------- (CUP v0.11b 20160615 (GIT 4ac7450))
    mv parser.java sym.java grammar/
    javac -sourcepath . grammar/Yylex.java grammar/parser.java grammar/sym.java
    javac -sourcepath . grammar/PrettyPrinter.java
    javac -sourcepath . grammar/Test.java
    javac -sourcepath . grammar/VisitSkel.java
    javac -sourcepath . grammar/ComposVisitor.java
    javac -sourcepath . grammar/AbstractVisitor.java
    javac -sourcepath . grammar/FoldVisitor.java

    ```

6. Run a benchmark:
    ```
    $ java grammar.Test < benchmarks/test1.pl 

    Parse Succesful!

    [Abstract Syntax]

    (Db [(Fact (CPred (Atm "child") [(TAtom (Atm "bart")), (TAtom (Atm "homer"))])), (Fact (CPred (Atm "child") [(TAtom (Atm "homer")), (TAtom (Atm "abe"))])), (Fact (CPred (Atm "child") [(TAtom (Atm "maggie")), (TAtom (Atm "homer"))])), (Rule (CPred (Atm "grandchild") [(VarT (V "X")), (VarT (V "Y"))]) [(CPred (Atm "child") [(VarT (V "X")), (VarT (V "Z"))]), (CPred (Atm "child") [(VarT (V "Z")), (VarT (V "Y"))])])]) 

    [Linearized Tree]

    child (bart, homer) . child (homer, abe) . child (maggie, homer) . grandchild (X, Y) :- child (X, Z), child (Z, Y) .

    ```