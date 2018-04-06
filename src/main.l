
%{
#include <stdlib.h>
#include <string.h>
void yyerror(char *);

#include "y.tab.h"

%}


%%

[0-9]+ {

		yylval = atoi(yytext);
		return INT;
}

["]*[A-Z]+["]* {

		return PALAVRA;
}

[,] {
	return VIRGULA;	
}

[[] {
	return ABRE;
}

[]] {
	return FECHA;
}

\n { return EOL;}
. ;

%%

int yywrap() {
  return 1;
}
