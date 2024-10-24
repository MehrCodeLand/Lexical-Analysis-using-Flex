%{
  /* definations */  
%}



/* Rule */
%%

[a-zA-Z_][a-zA-Z0-9_]* {printf("Valid\n");}
.+ {printf("Invalid\n");}
\n {return 0;}

%%


yywrap() {}

int main(){
    printf("Enter string: ");
    yylex();

    return 0 ;
}