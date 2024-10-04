# Exercise DTV.1 
# Write a R program to receive a couple of numbers and return the sum

a<- readline("Imput your first number: ")
a<-as.numeric(a)
b<-readline("Imput your second number: ")
b<-as.numeric(b)
ab<-a+b
cat("The sum is ", ab)

# Exercise DTV.2 
# We take a loan in a bank office to buy a Mercedes-Benz with a simple interest ratio of 4% for 1 year.
# Write a R program which receives the amount of borrowed money and calculates the final total amount of money paid after 8 month

principal<- readline("What is the start money: ")
principal<-as.numeric(principal)
intrest_rate<-0.04
number_of_years<-8/12
future_value<-principal*intrest_rate*number_of_years
cat("future value is ",future_value )

# Exercise DTV.3
# Your company has a debt of 50k€. You compare different deposits and the most profitable one is a deposit in Santander with a 6% annual compound interest.
# How much money should you invest in that deposit to have 50k€ in N years?

future_value <- 50000  # Defining the variables 
annual_interest <- 0.06   
annually <- 1    
N<- readline("How many years: ")
N<-as.numeric(N) # coverts string to numerical
principal <- future_value/(1 + annual_interest/annually)^(annually*N) # calculating the ivestment 
cat("How much money should you invest in that deposit to have 50k€ in N years? ",principal )

