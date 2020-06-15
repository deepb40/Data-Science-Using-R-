#examples of apply with student and marks dataset

Row and column
calculate english marks total, average
calculate maths marks total, average
calculate science marks total, average

#read the CSV file into R
Marks=read.csv("C:/Program Files/Marks.csv",header=T)
Marks
#percentage of each student
apply(Marks,1,mean)
#mean of english, science and maths marks
apply(Marks,2,mean)
#mean of maths only
apply(Marks[1],2,mean)
# apply(marks[,-c(1,2)],1,mean)

#Create a function
areaofcircle = function(x)
{return(pi*x*x)}
apply(Marks[1],1,areaofcircle)
#</lapply()>
lapply(Marks,mean)
words=c("apple","programming","R","cool","machine")
lapply(words,nchar)
#sapply()
sapply(Marks,mean)
Marks=read.csv("D:/Marks.csv",header=T)
Marks
#tapply
tapply(Marks$Maths,Marks$Sec,mean)
tapply(Marks$Science,Marks$Sec,mean)
tapply(Marks$English,Marks$Sec,mean)

#-----
fun1 <- function(a,b)
{
  print(a^2)
  print(a)
  print(b)
}
fun1(4,5)

#user defined function
calculatePrice <-
  function(base,tax,discount)
  {
    price=0
    price=base-((discount/100)*base)+((tax/100)*price)
    return(price)
  }
#calling a function
#1. by Position
calculatePrice(15000,12,5)
calculatePrice(discount=5,base=15000,tax=12)
#15000 = base price, 12 = tax%, 5 = discount
#2. by name of the parameters
calculatePrice(discount=5, base=15000, tax=12)
calculatePrice(base=30000,tax=24,discount=10)
#2. with some optional arguments
calculatePrice2 <- function(base,tax=12,discount)
{
  price=0
  price=base - ((discount/100)*base)+((tax/100)*price)
  return (price)
}

calculatePrice2(base=10000,discount = 30)
calculatePrice2(base=10000,discount=30,tax=40)

#-----------------
#Assignment
#write a function that takes 3 parameters
#p1 = number
#p2 = number
#p3 = action to be performed.
#     if p3= 'A', then add the numbers,
#          = 'S', then subtract the numbers,
#          = 'M', Multiplication,
#          = 'D', Division
#          = 'P', Power
# any other letter prin invalid operation
#return the result based on the Action
#print error when p1=0 or p2=0