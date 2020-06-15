#step1
library(ggplot2)
install.packages("ggplot2")
library(ggplot2)
root="C:/Users/Himanshu/Desktop/dataset/"
path=paste(root,"sleep.csv",sep="")
sleep=read.csv(path,header=T)

#step 2
attach(sleep)

#step 3
str(sleep)
sleep$X=NULL #column name blank, R reads that as 'X'
View(sleep)

#step 4
#<mandatory steps>
#sleep$Gender=as.factor(sleep$Gender)
#str(sleep$Gender)
sleep$gender[sleep$Gender==1] = "Female"
sleep$gender[sleep$Gender==0] = "Male"

sleep$Gender=NULL
sleep$gender = as.factor(sleep$gender)

str(sleep)
View(sleep)

#step 5
# ------
#depression levels in Males and Females
table(sleep$gender, sleep$DepressionStatus)

100*prop.table(table(sleep$gender,sleep$DepressionStatus)) #gives the percent view of the table

#step 6
#plot the graph
#Graphs with R
#1. Stripchart
stripchart(ClassYear, method="stack", main="strip chart of classyear",xlab = "Column ClassYear" )#main means title of the graph
#stripchart(tree$c, method="jitter)

#2.Histogram
#levels(factor(tree$C))

hist(GPA,breaks=10,main="Histogram for GPA",xlab="Column GPA")
#hist(tree$c, breaks = 2)

#3.boxplot
boxplot(AnxietyScore, main="Boxplot for Anxietyscore", ylab="Anxiety Score")

#4 Scatter Plot
plot(AnxietyScore, GPA)
cor(AnxietyScore, GPA)
plot(StressScore, GPA)

#5 Bar Plot
barplot(StressScore, main="Bar Plot Main",xlab="Rows",ylab="actuals")

#Bar Graph
ggplot(sleep,aes(x=sleep$DepressionStatus,
                 fill=sleep$DepressionStatus))+geom_bar()+
                 ggtitle("depression status")

#plotting 2 factor variables together
#--------
ggplot(sleep,aes(x=sleep$DepressionStatus,fill=sleep$gender))+geom_bar()

#alcohol use - gender wise
ggplot(sleep, aes(x=sleep$AlcoholUse, fill= sleep$gender))+geom_bar()

#pie chart
#----
ggplot(sleep,aes(x=factor(''),fill=sleep$DepressionStatus)) +geom_bar()+coord_polar(theta="y")

#dot plots
#-----
ggplot(sleep,aes(x=sleep$Drinks))+geom_dotplot()

#Scatter Plot using ggplot
ggplot(sleep, aes(x=sleep$DepressionScore,y=sleep$GPA))+
  geom_point(shape=1) + geom_smooth(method=lm,se=FALSE)

#histogram
ggplot(sleep,aes(x=sleep$Drinks))+geom_histogram(binwidth = 2)

#density plots
#1. having smooth boundaries
ggplot(sleep,aes(x=sleep$Drinks))+geom_density(adjust=0.4)

#density showing drinking pattern for males and females
ggplot(sleep,aes(x=sleep$Drinks, fill=sleep$gender))+geom_density(adjust=0.3)

#box plot
# for 2 variables
#-----
ggplot(sleep, aes(x=sleep$gender,y=sleep$Drinks))+geom_boxplot()

ggplot(sleep, aes(x=factor(0),y=sleep$Happiness))+geom_boxplot()+xlab("")+
  scale_x_discrete(breaks=NULL)+coord_flip()
