lex sql.l
yacc -d sql.y
gcc y.tab.c -w -o main
./main

