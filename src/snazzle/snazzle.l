%{
#include <cstdio>
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int yylex()

#include "snazzle.tab.h" // to get the token types that we return
%}
%%
[ \t\n]         ;
sNaZZle         { return SNAZZLE; }
type            { return TYPE; }
end             { return END; }
[0-9]+\.[0-9]+  { yylval.fval = atof(yytext); return FLOAT; }
[0-9]+          { yylval.ival = atoi(yytext); return INT; }
[a-zA-Z0-9]+    { yylval.sval = strdup(yytext); return STRING; }
.               ;
%%
