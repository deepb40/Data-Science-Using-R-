# <Data Types>
# --------
  #nominal and ordial
#-------

dept = c('hr','sales','finance','rd','management','admin')
typeof(dept)
dept=as.factor(dept)
print(dept)

dept(2)
which(dept=='sales')

#frequency distribution table (interval)
#---------
height = floor(runif(50,90,200))
hist(height,col="blue")
fd_height = cut(height,5)
cbind(frequency=table(fd_height))

#</Data types>


# 2) Data Distribution
#i)rnorm()
#random numbers from normal distribution
#---------
   #rnorm (x=<no of observations>, mean=<>, sd=<>)
   #default: mean=0; sd=1
#generate temperature of people having 98.4 as the mean
#-----------




#ii) dnorm()
#    -> PDF of the normal (guassion)
#distribution
#->x-axis: x-values
#->y-axis: density probablity values
#draw the bell-shaped curve
#-----------
x=round(seq(-4,4,len=100),2)
head(x)
length(x)
#plot the well-shaped graph

plot(x, dnorm(x),type="1",col="red")
points(x, dnorm(x,mean=0.2),type="1",col="blue")
points(x, dnorm(x,sd=2.2),type="1",col="green")

#from the graph, check the values and you will see they are placed exactly
dnorm(-4)
dnorm(2)

#draw a vertical line from top to bottom joining the points
#----------

#i) what is the probablity of finding 1 defective product
#out of 5 random samples, given the defect rate of the product is 25%

trials=5
success=1
prob=0.25
dbinom(success,trial,prob)

#similarly, the probablity of finding 0,2,3,4 and 5 defective
trials=5; prob=0.25
success = seq(0,5)
for(i in success){
  p = round(dbinom(i,trials,prob),3)
  print(paste("probablity of",as.character(i),"defective product=",as.character(p)))
}

#poission distribution
queue = rpois(1000,10)
hist(queue)
queue
#can use in situations since they are realistic
#1) no of calls received at a particular time
#statistical distribution - geometric, 

#in  a given interval of 10 minutes,
#the expected value (avg) of 
#vehicles passing through a bridge is 10.

#what is the probablity

#<measure of central tendency>

#generate 30 numbers at random with NA and shuffle
#-------
set1 = round(runif(30,1,200),2)
print(set1)
grp = runif(length(set1))
set1 = set1(order(grp))
print(set1)

#mean
#-----
mean(set1)
mean(set1,na.rm=T)

#ii) weighted mean
#-----
marks=c()
marks = append(marks,ceiling(runif(5,50,100)))
marks = append(marks,ceiling(runif(5,50,100)))
marks = append(marks,ceiling(runif(5,50,100)))
marks = append(marks,ceiling(runif(5,50,100)))
marks = append(marks,ceiling(runif(5,50,100)))

marks_bkp = marks

r=c(); c=c('homework','quiz','assignment','term','final')
mx_marks = matrix(marks_bkp,byrow=T,ncol=5,dimnames=list(r,c))
print(mx_marks)

#20%*Homework, 10%*quiz, 100%*assignment, 25%*term, 35%*final
max_r=nrow


#iii)geometric mean
#-----
library("pracma")
#detach("package:pracma")

