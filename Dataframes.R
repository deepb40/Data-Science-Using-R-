# day 4
# dataframes
#--------------

# id, name, eg, maths, science, email, ph

#build the vectors
#----------
stud_id = c(1:20); print(stud_id)
stud_name<- c('s1','s2','s3','s4','s5','s6','s7','s8','s9','s10','s11','s12','s13','s14','s15','s16','s17','s18','s19','s20')
maths=sample(1:100,20,replace=T)
science=sample(1:100,20,replace=T)
english=sample(1:100,20,replace=T)
length(stud_name)

#create the dataframe
stud = data.frame(stud_id, stud_name, maths, science, english)

#view the dataframe
#display the 1st 6 records
head(stud,2)

#display the last 6 records
tail(stud,5)

#view the dataframe
View(stud)

#dimension
dim(stud)

#total rows
nrow(stud)

#column names
colnames(stud)

#summarising the datasets
summary(stud)

#structure of the dataframe
str(stud)

#fix the name datatype
stud$stud_name = as.character(stud$stud_name)
str(stud)

#accessing the dataframes
#-------

stud[1] #all rows, first column
stud[1,1:3] # r= 1, c=1,2,3
stud[1,] # r=1, c= all
stud[1,c(1,4,5)] #r=1, c=1,4,5
stud[,c(1,2)] #r=all, c=1,2

#adding a new column to dataframe
#email

stud$email = c('s1@yahoo.com','s2@gmail.com','s3@hotmail.com','s4@rediffmail','s5@rediffmail','s6@rediffmail',
's7@rediffmail','s8hotmail.com','s9@gmail.com','s10@yahoo.com','s11@trip.com',
's12@gmail.com','s13@gmail.com','s14@gmail.com','s15@gmail.com','s16@edu.com',
's17@trip.com','s18@avit.com','s19@gmail.com','s20@hotmail.com')

View(stud)

#method 2  -> column bind
phone = runif(20,9015671167,9999845687)
stud = cbind(stud,phone)
View(stud)

#delete column names
colnames(stud)
stud$phone=NULL
View(stud)

#adding rows to the dataframes
stud_id <- c(21:25)
stud_name <- c('s21','s22','s23','s24','s25')
maths=sample(1:100,5,replace=T)
science=sample(1:100,5,replace=T)
english=sample(1:100,5,replace=T)
email <- c('s21@yemat.in','s22@hotmail.com','s23@sheboleth.com','s24@roll.com','s25@gmail.com')
phone=runif(5,9101020150,9986425874)
View(stud)



new_stud = data.frame(
  stud_id, stud_name,
  maths, science, english,
  email, phone, age, gender)

stud=rbind(stud,new_stud)

rm(new_stud)
print(new_stud)

nrow(new_stud)


#assignemnt
#add a column called age with random numbers and gender age=18 to 21, gender = M or F
age=floor(runif(20,18,21))
stud=cbind(stud,age)
View(stud)

colnames(stud)
stud$age=NULL
View(stud)

#age
age=floor(runif(20,18,21))
stud=cbind(stud,age)
View(stud)

#gender
gender=rep(c('F','M','F','M','M'))
stud$gender=gender
View(stud)

#delete rows
#-------
nrow(stud)
stud = stud[-c(1:45),]
nrow(stud)
rownames(stud)
View(stud)

nrow(stud)
stud = stud[-c(1:27),]
nrow(stud)
rownames(stud)
View(stud)

#sorting datasets/databases/dataframes
colnames(stud)
View(stud[order(stud$maths),])#ascending order of Maths marks
View(stud[order(stud$science,decreasing=T),])

#querying datasets
#Q1) english > 70
View(stud[stud$english>70,])

# Q1) english> 70 and maths > 50
View(stud[(stud$english>70 & stud$maths<50),])
View(stud[(stud$science<60 & stud$maths>80),])
View(stud[(stud$maths=86 & stud$english>70),])

#select * FROM <condition>
View(stud[stud$english>70,])

# q1) english > 70 AND maths > 50
View(stud[(stud$english>70 & stud$maths<50),])

#select <column names> where condition
stud[stud$stud_id==21,c('stud_name','maths')]

#or coniditon
stud[(stud$english>70) | (stud$maths>70),]

#update records matching a condition
stud[stud$stud_id == 1,]
stud$stud_name[stud$stud_name == 's21']='Joshi'
stud
              
#write a query to select all the female students
View(stud[(stud$gender=='F'),])

#Find out whether male pop is > or female pop is >
nrow (stud)
for (i in 1:nrow(stud)) {
  m1=0
  f1=0
  if(stud$gender == "F"){
    f1=f1+1
  }
  else{
    m1=m1+1
  }
  }
#list the student id and name having the total of subjects > 200

#selective filtering
View(stud[grep("hotmail", stud$email),])

#email id ending with ."in"
View(stud[grep(".in", stud$email),])

#number starting from 96 to 98
stud[(stud$phone >9600000000 $ stud$phone <9900000000),]

#mean of a particular student
mean(stud$science)
num=9629601299
substr(num,1,2)

