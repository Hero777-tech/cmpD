%{
    #include<stdio.h>
    int length;    
%}

%%
.+ {length = yyleng;}
\n;
%%

int main(){
    printf("Enter the length: ");
    yylex();
    printf("The length of string: %d", length);
    return 0;
}

int yywrap(){
    return 1;
}