PROG -> SUBPROG
SUBPROG -> CONST VARIABLE PROCEDURE STATEMENT
CONST -> CONST_  | ^
CONST_ -> const CONST_DEF | CONST_ , CONST_DEF
CONST_DEF -> ID = UINT
UINT -> num
VARIABLE -> VARIABLE_ | ^
VARIABLE_ -> var ID | VARIABLE_ , ID
ID -> id
PROCEDURE -> PROCEDURE_ | ^
PROCEDURE_ -> PROC_HEAD SUBPROG ; | PROCEDURE_ PROCEDURE_
PROC_HEAD -> procedure ID ;
STATEMENT -> ASSIGN | COND | WHILE | CALL | READ | WRITE | COMP | ^
ASSIGN -> ID := STATEMENT
COMP -> COMP_BEGIN end
COMP_BEGIN -> begin STATEMENT | COMP_BEGIN ; STATEMENT
CONDDITION -> EXPR REL EXPR | odd EXPR
EXPR -> PLUS_MINUS ITEM | EXPR PLUS_MINUS ITEM
ITEM -> FACTOR | ITEM MUL_DIV FACTOR
FACTOR -> ID | UINT | ( EXPR )
PLUS_MINUS -> + | -
MUL_DIV -> * | /
REL -> = | # | < | <= | > | >=
COND -> if CONDDITION then STATEMENT
CALL -> call ID
WHILE -> while CONDDITION do STATEMENT
READ -> READ_BEGIN )
READ_BEGIN -> read ( ID | READ_BEGIN , ID
WRITE -> WRITE_BEGIN )
WRITE_BEGIN -> write ( ID | WRITE_BEGIN , ID

