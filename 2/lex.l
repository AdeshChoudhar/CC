D			[0-9]
L			[a-zA-Z_]
H			[a-fA-F0-9]
E			[Ee][+-]?{D}+
FS			(f|F|l|L)
IS			(u|U|l|L)*

%{
    #include <stdio.h>
    int comment();
%}

%%
"/*"			{ comment(); }

"auto"			{ printf("Identifier : %s\n", yytext); }
"break"			{ printf("Identifier : %s\n", yytext); }
"case"			{ printf("Identifier : %s\n", yytext); }
"char"			{ printf("Identifier : %s\n", yytext); }
"const"			{ printf("Identifier : %s\n", yytext); }
"continue"		{ printf("Identifier : %s\n", yytext); }
"default"		{ printf("Identifier : %s\n", yytext); }
"do"			{ printf("Identifier : %s\n", yytext); }
"double"		{ printf("Identifier : %s\n", yytext); }
"else"			{ printf("Identifier : %s\n", yytext); }
"enum"			{ printf("Identifier : %s\n", yytext); }
"extern"		{ printf("Identifier : %s\n", yytext); }
"float"			{ printf("Identifier : %s\n", yytext); }
"for"			{ printf("Identifier : %s\n", yytext); }
"goto"			{ printf("Identifier : %s\n", yytext); }
"if"			{ printf("Identifier : %s\n", yytext); }
"int"			{ printf("Identifier : %s\n", yytext); }
"long"			{ printf("Identifier : %s\n", yytext); }
"register"		{ printf("Identifier : %s\n", yytext); }
"return"		{ printf("Identifier : %s\n", yytext); }
"short"			{ printf("Identifier : %s\n", yytext); }
"signed"		{ printf("Identifier : %s\n", yytext); }
"sizeof"		{ printf("Identifier : %s\n", yytext); }
"static"		{ printf("Identifier : %s\n", yytext); }
"struct"		{ printf("Identifier : %s\n", yytext); }
"switch"		{ printf("Identifier : %s\n", yytext); }
"typedef"		{ printf("Identifier : %s\n", yytext); }
"union"			{ printf("Identifier : %s\n", yytext); }
"unsigned"		{ printf("Identifier : %s\n", yytext); }
"void"			{ printf("Identifier : %s\n", yytext); }
"volatile"		{ printf("Identifier : %s\n", yytext); }
"while"			{ printf("Identifier : %s\n", yytext); }

{L}({L}|{D})*		{ printf("Variable : %s\n", yytext); }

0[xX]{H}+{IS}?		{ printf("Constant : %s\n", yytext); }
0{D}+{IS}?		    { printf("Constant : %s\n", yytext); }
{D}+{IS}?		    { printf("Constant : %s\n", yytext); }
L?'(\\.|[^\\'])+'	{ printf("Constant : %s\n", yytext); }

{D}+{E}{FS}?		    { printf("Constant : %s\n", yytext); }
{D}*"."{D}+({E})?{FS}?	{ printf("Constant : %s\n", yytext); }
{D}+"."{D}*({E})?{FS}?	{ printf("Constant : %s\n", yytext); }

L?\"(\\.|[^\\"])*\"	    { printf("Literal : %s\n", yytext); }

"..."			        { printf("Operator : %s\n", yytext); }
">>="			        { printf("Operator : %s\n", yytext); }
"<<="			        { printf("Operator : %s\n", yytext); }
"+="			        { printf("Operator : %s\n", yytext); }
"-="			        { printf("Operator : %s\n", yytext); }
"*="			        { printf("Operator : %s\n", yytext); }
"/="			        { printf("Operator : %s\n", yytext); }
"%="			        { printf("Operator : %s\n", yytext); }
"&="			        { printf("Operator : %s\n", yytext); }
"^="			        { printf("Operator : %s\n", yytext); }
"|="			        { printf("Operator : %s\n", yytext); }
">>"			        { printf("Operator : %s\n", yytext); }
"<<"			        { printf("Operator : %s\n", yytext); }
"++"			        { printf("Operator : %s\n", yytext); }
"--"			        { printf("Operator : %s\n", yytext); }
"->"			        { printf("Operator : %s\n", yytext); }
"&&"			        { printf("Operator : %s\n", yytext); }
"||"			        { printf("Operator : %s\n", yytext); }
"<="			        { printf("Operator : %s\n", yytext); }
">="			        { printf("Operator : %s\n", yytext); }
"=="			        { printf("Operator : %s\n", yytext); }
"!="			        { printf("Operator : %s\n", yytext); }
";"			            { printf("Operator : %s\n", yytext); }
("{"|"<%")		        { printf("Operator : %s\n", yytext); }
("}"|"%>"`)		        { printf("Operator : %s\n", yytext); }
","			            { printf("Operator : %s\n", yytext); }
":"			            { printf("Operator : %s\n", yytext); }
"="			            { printf("Operator : %s\n", yytext); }
"("			            { printf("Operator : %s\n", yytext); }
")"			            { printf("Operator : %s\n", yytext); }
("["|"<:")	            { printf("Operator : %s\n", yytext); }
("]"|":>")	            { printf("Operator : %s\n", yytext); }
"."			            { printf("Operator : %s\n", yytext); }
"&"			            { printf("Operator : %s\n", yytext); }
"!"			            { printf("Operator : %s\n", yytext); }
"~"			            { printf("Operator : %s\n", yytext); }
"-"			            { printf("Operator : %s\n", yytext); }
"+"			            { printf("Operator : %s\n", yytext); }
"*"			            { printf("Operator : %s\n", yytext); }
"/"			            { printf("Operator : %s\n", yytext); }
"%"			            { printf("Operator : %s\n", yytext); }
"<"			            { printf("Operator : %s\n", yytext); }
">"			            { printf("Operator : %s\n", yytext); }
"^"			            { printf("Operator : %s\n", yytext); }
"|"			            { printf("Operator : %s\n", yytext); }
"?"			            { printf("Operator : %s\n", yytext); }

[ \t\v\n\f]		{ }
.			{ /* ignore bad characters */  return 0;}

%%

int yywrap()
{
	return 1;
}


int comment()
{
    printf("Comments : ");
	char c, c1;

loop:
	while ((c = input()) != '*' && c != 0)
		putchar(c);

	if ((c1 = input()) != '/' && c != 0)
	{
		unput(c1);
		goto loop;
	}

    printf("\n");
}


int column = 0;

int main()
{
    yylex();
}
