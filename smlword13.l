%{
#include<string.h>
#include<stdlib.h>
#include<stdio.h>
int small=9999, len;
char string[200], word[200];
%}

%%
[ \t\n]* {
    len = strlen(string);
    if(small > len){
        small = len;
        strcpy(word,string);
    }
    string[0] = '\0';
}
. strcat(string,yytext);
%%

int main(){
    yylex();
    printf("return is : %s",word);
    return 0;
}

int yywrap(){
    return 1;
}

