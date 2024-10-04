
# Check how many of those flights start in Madrid? 
flight1<- "MAD-LIS"
flight2<- "MAD-LON"
flight3<- "BCN-MAD"
flight4<- "MAD-SVQ"

#substr(flight1, 1, 3)
#grepl("MAD-", flight1)
#startsWith("MAD")
count<- 0
count<- count+ grepl("MAD", substr(flight1, 1, 3))
count<- count+ grepl("MAD", substr(flight2, 1, 3))
count<- count+ grepl("MAD", substr(flight3, 1, 3))
count<- count+ grepl("MAD", substr(flight4, 1, 3))

#cat("The flight1 stared in madrid: ", grepl("MAD", flight1))
cat("The number of flights that started in Madrid: ", count, "\n")
cat("The flight1 stared in madrid: ", startsWith(flight1, "MAD"))

#past0(flight1,flight2,flight3,flight4)
