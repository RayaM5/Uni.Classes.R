
getwd()
source("SessionEX.R")

#Write a script to ask for a sentence 
# Ask for a number N also
# Ask for a letter

# Extract the first N character from the text
# check if the letter is or not in those first characters 
# run this file using the command sourse

#sentence< readline("what is the sentance: ")

#Example: "Hello world"  "4"  "o" 
# False

sentence <- tolower(readline("Enter a sentence: "))
N <- as.numeric(readline("Enter a number (N): "))
letter <- tolower(readline("Enter a letter: "))

first_N_chars <- substr(sentence, 1, N)
checker <- grepl(letter, first_N_chars)
cat("Is the letter in the first", N, "characters? ", checker, "\n")
