%{
    #include <stdio.h>
    #include <string.h>

    int is_keyword(char *word);

    char *keywords[] = {
        "if", "else", "while", "do", "int", "float", "return", "char", "double", "for",
        "switch", "case", "break", "continue", "void", "default", "const", "unsigned", 
        "signed", "static", "struct", "typedef", "union", "enum", "goto", "sizeof", NULL
    };
%}

%%
[a-zA-Z_][a-zA-Z0-9_]* {
    if (is_keyword(yytext)) {
        printf("%s is a keyword\n", yytext);
    } else {
        printf("%s is an identifier\n", yytext);
    }
}

.|\n { /* ignore other characters */ }

<<EOF>> { return 0; }
%%

int main() {
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}

int is_keyword(char *word) {
    for (int i = 0; keywords[i] != NULL; i++) {
        if (strcmp(word, keywords[i]) == 0) {
            return 1;
        }
    }
    return 0;
}
