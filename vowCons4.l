%{
    #include <stdio.h>
    int vowel_count = 0;
    int consonant_count = 0;
%}

%%

[aAeEiIoOuU] { vowel_count++; }
[b-df-hj-np-tv-zB-DF-HJ-NP-TV-Z] { consonant_count++; }
.|\n { /* ignore other characters */ }

<<EOF>> { return 0; }

%%

int main() {
    /*
    for external file--
    extern FILE *yyin;
    printf("name\n");
    char[100] n;
    scanf("%s", n);
    yyin = fopen(n,"r");
    if (yyin == NULL){
		printf("Cannot open file %s\n", filename);
	    exit(0);
	}
    */
    yylex();
    printf("Number of vowels: %d\n", vowel_count);
    printf("Number of consonants: %d\n", consonant_count);
    return 0;
}

int yywrap() {
    return 1;
}
