%{
    #include<stdlib.h>
    #include<stdio.h>
    int count;
%}

%%
.;
\n count++;

%%


int main(){
    extern FILE *yyin;
    printf("Enter file name: ");
    char[100] fil;
    scanf("%s",fil);
    yyin = fopen(fil,"r");
    yylex();
    printf("Counted line: %d ",count+1);
    return 0;

}