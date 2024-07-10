dig [0-9]+|([0-9]*)"."([0-9]+)

%{
    #include<stdio.h>
    #include<string.h>
    #include<stdlib.h>

    float sum=0;
%}

%%
{dig} {printf("This is matched: %s\n",yytext); sum+=atof(yytext);}
. ;
\n {printf("sun %f",sum);}
%%

int main(){
    yyle();
    return 0;
}

int yywrap(){
    return 1;
}