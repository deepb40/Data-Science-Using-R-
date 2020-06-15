#Chapter: 4
# List Variable
#contains elements of different typers


#unnamed list
#---------
educ_unnamed=list("school","High School", "Graduation","PG", "Doctorate")
educ_unnamed

#named list
#-----
educ_named = list(educ_type = "School","High School", "Graduation", "PG", "Doctorate","Post Doctorate")
print(educ_unnamed);typeof(educ_unnamed)
print(educ_named); typeof(educ_named)
typeof(educ_unnamed)

#accessing the list elemnts using the index numbers
educ_unnamed[1] #1 st
output_list = educ_unnamed[1:4] # 1 to 4
output_list

educ_unnamed[c(1,4)]# 1 and 4

#educ_named$eductype[1:4]
educ_named[1:4]
#accessing using the name of the list is not possible
educ_type[1]
#assignment
#create a list of names of months
#1.name the list as "allMonths"
#2.access all the odd months and store in a list "ODD_MONTHS"
#3. same for even.
Months = list(allMonths = "Jan","Feb","March","April","May","June","July","Aug","Sept","Oct","Nov","Dec")
print(Months);typeof(Months)
odd_month = list(odd=Months[seq(1,3,12)])
even_month = list(even=Months[seq(2,4,)])
odd_month
even_month
#converting a list into vector
unlist(educ_unnamed)
unlist(educ_named)
#get the length of the lists
length(educ_unnamed); length(educ_named)
#adding a new value ti the existing list
#1. Insert new elements at the end of the list
len= length(educ_unnamed)
educ_unnamed[len+1] = "Specialization";
prit(educ_named); length (educ_named)
#2. Insert new elements in between elements of the list
pos= grep("PG",educ_unnamed); print(pos)
educ_unnamed = append(educ_unnamed, list ("M.Phil"),pos)
length(educ_unnamed)
print(educ_unnamed)
#rename M.Phil to 'Masters in Philosophy'
pos=grep("M.Phil",educ_unnamed)
pos
educ_unnamed[pos]
educ_unnamed[pos] = "Master in Philosophy"
educ_unnamed[5]
#delete items from a list
pos = grep("Master in Philosophy",educ_unnamed)
print(pos)
educ_unnamed[pos] = NULL
print(educ_unnamed)
#named list and list of lists
myeduc=list(
  "school" = list('school','high school','college','mba','post grad'),
  "grad" = list(1989,1991,1995,1997,2015)
)
myeduc
#accessing the list of lists
myeduc$grad[3]
#assignment
#using the above list, output in the
#following format
#school - <year>, high school - <year> etc...
#----



# a list can contain  multiple data types
str1 = c("cat","mouse")
vect1 = c(101,202,303,404,505,606)
mx1=matrix(vect1*5,nrow=2, ncol=3, byrow= TRUE)
mylist1 = list(str1,vect1,mx1)
mylist1
unlist(mylist1)
mx1 = mylist1[3]
mx1
typeof(mx1)
#pre-defined lists can be used to automate data
letters
letters
month.abb
month.name
