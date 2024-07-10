low [a-z] 

%{
    #include<stdio.h>
%}

%%
{low} {printf("%c",yytext[0]-32);}
\n ECHO;
.  ECHO;

%%

int main(){
    printf("This is lex code: ");
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}