%{
    
%}


%%

[a-z0-9]+@[a-z0-9.-]+ {printf("Email Addres");}
[0][9][1-9][0-9]{8} {printf("Mobile number\n");}
. {printf("invalid Mobile number\n");}
\n {return 0;}

%%


yywrap() {}

int main(){
    printf("Enter string: ");
    yylex();

    return 0;
}



