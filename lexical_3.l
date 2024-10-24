%{
    int count = 0;    
    
%}

%%

[a-z] {printf("%s is lowercase character\n", yytext); ++count;}
. {printf("%s is not lowercase character \n" , yytext);}

%%

yywrap() {}


int main(){
    printf("enter string: ");
    yylex();

    printf("There were %d lowervases character \n" , count);

    return 0;
}
