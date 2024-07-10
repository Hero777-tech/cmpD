/*  Lex program to reverse all the words in an input text. */

%{
	#include <stdio.h>
	#include <string.h> 
%}

/* Rules */

%%
[a-zA-Z0-9]+    {
    while(yyleng--) {
        printf("%c", yytext[yyleng]);
    }
}
.|\n    ECHO;

%%

int main()
{
	printf("This Program reverses all the words in an input text.\n");
	/*call the yylex function.*/
	yylex();					
	return 0;
}

/*call the yywrap function*/
int yywrap()					
{
	return 1;
}