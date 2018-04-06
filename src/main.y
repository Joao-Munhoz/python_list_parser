

%{
#include <stdio.h>
  #include <stdlib.h>
void yyerror(char *c);
int yylex(void);
%}
%token INT EOL PALAVRA VIRGULA ABRE FECHA 
%left INT
%left VIRGULA

%%

RETORNA:
		  ABRE EXPRESSAO FECHA EOL{
		 	printf("OK\n");
		 }
		 |
		 ABRE FECHA EOL{
		 	printf("OK\n");
		 }
		 

EXPRESSAO:
		 
		 INT 
		 |
		 PALAVRA 
		 |
		 EXPRESSAO VIRGULA EXPRESSAO
		 |
		 ABRE EXPRESSAO FECHA

		


%%


void yyerror(char *s) {
	printf("ERRO\n");
}

int main() {
  yyparse();
    return 0;

}
