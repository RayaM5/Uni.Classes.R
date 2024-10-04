%% - modulus - gives the remainder of the devision 
** - exponent 
%/% - floor division - asnwer without dicimal points (9%/%2 = 4)

& - and 
| - or
! - 
  
> - greater than
< - less than
>= - greater or equal than
<= - less or equal than
== - check if the valuees are the same 
!= - checks if the two values are not the same 
  

readline("words: " ) - input of user 

as.numeric(x) - returns a decimal value by converting x
as.integer(x) - returns an integer value by converting x
as.character(x) - returns a character value by converting x
as.logical(x) - returns a boolean value
typeof(x) - checks the type of x


    text_variable <- " Calle Mayor st "
nchar(text_variable) 18 - number of characters 
toupper(text_variable) " CALLE MAYOR ST " 
tolower(text_variable) " calle mayor st "
gsub("st","street",text_variable) " Calle Mayor street " - change of words ()
trimws(text_variable) "Calle Mayor st" - remove the space infront and back
grepl("Mayor",text_variable) TRUE - searches characters in a variable
substr(text_variable, 4, 11) "lle Mayo" - deletes characters 
paste0(variable1,variable2)  - concatenate 2 variables

getwd() # Example output: "/Users/username/Documents/R/"
source("Session7.2.R") # Thename of the file you want to opan