
%{ 
int count = 0; 
%} 


%% 
[A-Z] {printf("%s capital letter\n", yytext); 
	count++;} 
.	 {printf("%s not a capital letter\n", yytext);} 
\n {return 0;} 
%% 


int yywrap(){} 
int main(){ 

// Explanation: 
// yywrap() - wraps the above rule section 

// yytext is the text in the buffer 

// Uncomment the lines below 
// to take input from file 
// FILE *fp; 
// char filename[50]; 
// printf("Enter the filename: \n"); 
// scanf("%s",filename); 
// fp = fopen(filename,"r"); 
// yyin = fp; 

yylex(); 
printf("\nNumber of Captial letters "
	"in the given input - %d\n", count); 

return 0; 
} 
