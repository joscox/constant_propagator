/* scanner for a toy Pascal-like language */
%option noyywrap
     
%{
	/* need this for the call to atof() below */
#include <math.h>
#include <stdio.h>
#include <string.h>
#include "symbols.h"

%}
     
DIGIT    [0-9]
ID       [a-z][a-z0-9]*
     
%%
     
{DIGIT}+|{DIGIT}+"."{DIGIT}*|{DIGIT}*"."{DIGIT}+    {
	return NUM;
       }
     
     
"?"        {
	return COND;
     }
{ID}              return VAR;

"+"|"-"|"*"|"/"|"^"|"=="|"="   return OP;
":"               return ELSE;


     
[ \t]+          /* eat up whitespace */
\n return EOL;
.           return BAD;
     
%%
     
int main( int argc, char **argv )
{
	int i = 0;
	++argv, --argc;  /* skip over program name */
	if ( argc > 0 )
		yyin = fopen( argv[0], "r" );
	else
		yyin = stdin;
	while((i = yylex()))
		printf("%s %s\n", yytext, symbolnames[i]);
	return 0;
}
