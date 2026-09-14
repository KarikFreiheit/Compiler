%{
#include <stdio.h>
%}

%%

"int"       { printf("INT\n"); }
"print"     { printf("PRINT\n"); }
[0-9]+      { printf("NUM\n"); }
[a-zA-Z]+   { printf("ID\n"); }
"="         { printf("EQUAL\n"); }
"+"         { printf("PLUS\n"); }
";"         { printf("SEMICOLON\n"); }
[ \t\n]     { }
.           { printf("ERROR: %s\n", yytext); }

%%

int yywrap() {
    return 1;
}

int main() {
    yylex();
    return 0;
}