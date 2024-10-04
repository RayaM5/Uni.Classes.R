# Exercise 1: 
# ask for a name of a user 
# ask for a number 
# let us know if the name has or not that amount of characters

name <- trimws(readline("Input a name: "))  #Get a input in variable 'name' that is trimp from spaces in the front and back
number <- readline("Input a number: ") # Get a input  in variable 'number'
if (nchar(name)==number){ # Make a conditional statement that checks the number of characters in the variable 'name' is the same as variable 'numbers'
  cat("The name ",name, "does have a", number,"amount of charaters.") # Print 
}else { # There is no further condition needed
  cat("The name ", name, "doesn't have a", number,"amount of charaters.")
}


# Exercise 2: 
# Ask for the student's subject 
# Ask for the grade the student obtained 
# Explain if the student passed or not according to this options: 
# Coding: minimum required grade: 4 points 
# Finance: minimum required grade: 5 points

subject <- trimws(tolower(readline("Input a subject: "))) # Get a input in variable 'subject' that is trimp from spaces in the front and back and converted to lower so when we check for the word is essier 
grade <- as.numeric(readline("Input a grade: ")) # Get a input in variable 'grade' and save it to numerical
# Check if the subject is "coding" and the grade is 4 or higher, OR if the subject is "finance" and the grade is 5 or higher
if ((subject == "coding" & grade >= 4) | (subject == "finance" & grade >= 5)) { # If the condition is true print
  cat("You have past the subject in the database!")

# If the subject is not "coding" and not "finance", print a message indicating that the subject does not exist in the database/code
} else if (subject != "coding" & subject != "finance") { 
  cat("There is no such a subject we have!")
} else { #If none of the in the conditions are met print faild code
  cat("You have faild in finance or coding.")
}


# Exercise 3: 
# Ask for a number and show if the number is multiple of 10 and 
# multiple of 2 and greater than 100. IF the 3 conditions are happening, we will show congrats. 
# Run the exercise with a source command
## is a coment

## This is the code that is put in Session7.2.R
#number <- as.numeric(readline("Give me a number: ")) 
## Check if the number meets three conditions:# 1. It is a multiple of 10, by 2 and greater than 100
## %% - modulus (gives a reminder)
#if (number %% 10 == 0 & number %% 2 == 0 & number > 100) {
#  cat("Congrats! The number meets all the conditions.")
#} else {
#  cat("The number does not meet all the conditions.")
#}

getwd() # Example output: "/Users/username/Documents/R/"
source("Session7.2.R") # Executes the R code in the specified script
#

# Exercise 4:
# Ask for 3 colors. Let them know if those colors match or not with
# the colors in the French or German flag

color1 <-  trimws(tolower(readline("Enter the first color: "))) # Get a input in variable 'color1' that is trimp from spaces in the front and back and all the letters are converted to lower so when we check for the word is essier 
color2 <-  trimws(tolower(readline("Enter the second color: ")))
color3 <-  trimws(tolower(readline("Enter the third color: ")))
# Check if the colors match the German flag (black, red, yellow)
if ((color1 == "black" | color1 == "red" | color1 == "yellow") &
    (color2 == "black" | color2 == "red" | color2 == "yellow") &
    (color3 == "black" | color3 == "red" | color3 == "yellow") &
    color1 != color2 & color2 != color3 & color1 != color3) { # Ensure that the colors are not the same 
  cat("Correct! These are the colors of the German flag.")
} else {   # If any condition is not met, print an error message
  cat("Incorrect colors. The German flag is black, red, and yellow")
}



