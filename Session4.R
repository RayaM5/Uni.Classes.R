# Exercise DTV.4
# Write a R program to calculate the length of a string.

sample_string<- readline("Give me a word: ")
number_character<- nchar(sample_string)
cat(number_character)  

# Exercise DTV.5
# Write a R program to replace the first letter by $ in the remaining text.
#  Sample String : 'restart'
#  Expected Result : 'resta$t'
#Tip: use the command paste0(variable1,variable2) to concatenate 2 variables

text <- readline("Enter the word: ")
first_letter <- substr(text, 1, 1)
remaining_text <- gsub(first_letter, "$", substr(text, 2, nchar(text)))
text <- paste0(first_letter, remaining_text)
cat(text)

# Advance: 
text <- readline("Enter the word: ")
cat(paste0(substr(text, 1, 1), gsub(substr(text, 1, 1), "$", substr(text, 2, nchar(text)))))

# Exercise DTV.6
#Write a R program to lowercase only the first 6 characters in a string.
#Example:
#  Sample string: "STreeT Maria de Molina"
#  Expected result: "street Maria de Molina"

text <- readline("Enter the string: ")
first_text <- tolower(substr(text, 1, 6))
remaining_text <- substr(text, 7, nchar(text))
first_text <- tolower(first_text)
result <- paste0(first_text, remaining_text)
cat(result)

# Advance: 
text <- readline("Enter the string: ")
cat(paste0(tolower(substr(text, 1, 6)), substr(text, 7, nchar(text))))


# Exercise DTV.7
# Check if some of these 3 clients live in "Recoletos Street".
# address1 <- " RECOLETOS Street "
# address2 <- "recoletos st"
# address3 <- "Cibeles Square "
# Extra exercise: can you create a variable named "total" with the total number of times that "Recoletos street" appears?

address1 <- readline("Enter the first address: ")
address1 <- trimws(tolower(address1))  
address1 <- gsub(" st$", " street", address1)  


address2 <- readline("Enter the second address: ")
address2 <- trimws(tolower(address2))
address2 <- gsub(" st$", " street", address2)

address3 <- readline("Enter the third address: ")
address3 <- trimws(tolower(address3))
address3 <- gsub(" st$", " street", address3)

total <- sum(grepl("recoletos street", address1), 
             grepl("recoletos street", address2),
             grepl("recoletos street", address3))

cat("Total appearances of 'Recoletos Street':", total)

# Extra exercis
# Given this type of info, we want to check if this sale took place on Monday or not
# sale1<- "2024-11-26, Tue, 10:00:00"
# sale2<- "2024-10-26, Mon, 14:34:00"
# sale3<- "2024-12-25, Wed, 09:34:10"

sale1 <- readline("Enter the sale date (year-month-date), day of the week (Mon), time (00:00:00): ")
sale2 <- readline("Enter the sale date (year-month-date), day of the week (Mon), time (00:00:00): ")
sale3 <- readline("Enter the sale date (year-month-date), day of the week (Mon), time (00:00:00): ")

cat("Sale 1 on Monday:", grepl(", Mon,", sale1))
cat("Sale 2 on Monday:", grepl(", Mon,", sale2))
cat("Sale 3 on Monday:", grepl(", Mon,", sale3))


