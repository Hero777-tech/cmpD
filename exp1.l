%{
    #include<stdio.h>
    #include<stdlib.h>
    int i=0;
%}

%%
[a-zA-Z0-9]*  i++;

.|\n          ;

<<EOF>>       return 0;

%%

int main(){
    yylex();
    printf("words are:%d",i);
    return 0;
}

int yywrap(){
    return 1;
}