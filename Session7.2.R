#getwd()
#source("Session7.1.R")

#exercise 3 
number <- as.numeric(readline("Give me a number: "))
if (number %% 10 == 0 & number %% 2 == 0 & number > 100) {
  cat("Congrats! The number meets all the conditions.")
} else {
  cat("The number does not meet all the conditions.")
}