%{

%}


%%

[ \n\r\t]+ {/* igonre them with white space*/}

"if"            { printf("IF ");}
"while"         { printf("WHILE "); }
"print"         { printf("PRINT "); }
"read"          { printf("READ "); }

[a-zA-Z_][a-zA-Z0-9_]*          {printf("IDENTIFIER");}
[0-9]+                          {printf("NUMBER");}


.                               {print("LEXICAL ERROR");}
<<EOF>>                         {printf("EOF"); return 0;}

%%


yywrap() {}


int main(){
    printf("enter string: ");
    yylex();

    return 0;
}
