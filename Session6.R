# FLOW.1
# Write a R program that receives a number and shows if it is multiple of 5 or not

number <- readline ("Give me a number: ")
number<-as.numeric(number)
if (number %% 5 == 0) {
  cat(number, "is a multiple of 5")
} else {
  cat(number, "is not a multiple of 5")
}

number <- readline ("Give me a number: ")
number<-as.numeric(number)
last_digit <- substr(as.character(number), nchar(number), nchar(number))
if (last_digit == "5" | last_digit == "0") {
  cat(number, "ends with 5 or 0, hence it is a multiple of 5")
} else {
  cat(number, "does not end with 5 or 0, hence it is not a multiple of 5")
}
# FLOW.2
# Write a R program that receives the revenue for a client and shows the category for this client according with the following criterion:
#  - The revenue is negative ---------> Category A
#  - The revenue is 0 ---------> Category B
#  - The revenue is in [10,20] ---------> Category C
#  - The revenue is in (0,10) or bigger than 20 ---------> Category D

revenue <- readline("Tell me your revenue: ")
revenue <- as.numeric(revenue)
if (revenue < 0) {
  cat("Revenue:", revenue, "----> Category A")
} else if (revenue == 0) {
  cat("Revenue:", revenue, "----> Category B")
} else if (revenue >= 10 & revenue <= 20) {
  cat("Revenue:", revenue, "----> Category C")
} else if ((revenue > 0 & revenue < 10) | revenue > 20) {
  cat("Revenue:", revenue, "----> Category D")
}

# FLOW.3
# Write a R program that asks for a name to the user. If that name is your name, give congratulations. If not, let him know that is not your name
my_name <- 'Raya'
user_name <- trimws(readline("Enter your name: "))
if (tolower(user_name) == tolower(my_name)) {
  cat("Congratulations,", user_name, "! That's my name too!")
} else {
  cat(user_name, "is not my name. My name is", my_name)
}

# Additional 
# then ask for 2 name and number then number and we look for the 2 and coracter in the two names to be the same, if yes say it. 

name1 <- trimws(tolower(readline("Enter the first name: ")))
name2 <- trimws(tolower(readline("Enter the second name: ")))
number <- as.numeric(readline("Enter a number: "))
if (nchar(name1) >= number & nchar(name2) >= number) {
  if (substr(name1, number, number) == substr(name2, number, number)) {
    cat("The", number, "character of both names is the same!")
  } else {
    cat("The", number, "character of both names is different.")
  }
} else {
  cat("One of the names is too short for the chosen position!")
}

