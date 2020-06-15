n=c(12,456,734,25,73,36,23,46,6878,34,34,657,99)
print(n)
#index start from 1
n[1] #first element
n[1:5] #first 5 elements
n[c(1,3,5,7)] # selected range of element
n[c(1:3,7:9)] # split range
#check for even number in a vector
n%%2==0 # shows true faalse condition
positions=which(n%%2==0) # shows position which are true
n[positions] #display the numberes which are even

#assignment create vector and extract only 2 digit numbers

num=c(122,5,612,41,5,43,53,52,42,6223,234,622,234,23)
pos=which(nchar(num)==2)
num[pos]

# vectors with nulls
v1=c(13,52,634,76,435,46,NA,NA,12,54,1)

v2=c(12,54,12,54,123,54,NA,NA,12)
print(v1)
print(v2)
sum(v1)
sum(v2)

sum(v1, na.rm = T)
sum(v2, na.rm = T)
 
mean(v1, na.rm = T)
# get unique values
unique(v1)

duplicated(v1)
pos2=which(duplicated(v1))
v1[pos2]
v1[duplicated(v1)=FALSE]

#Assignment
# delete duplicate values
v3=unique(v2)
print(v3)
v2=(which(!duplicated(v2)))

#replace value in vector
print(v1)
v1[is.na(v1)]=555
print(v1)
v1[v1==555]=0
print(v1)
v2[is.na(v2)]=3
print(v2)
v2[v2=="asd"]=9999
print(v2)

#sort rank and order
marks=c(12,65,98,42,76,85,34,66,87,32,80,99,33,23,67)
sort(marks)
sort(marks,decreasing = T)
rank(marks)
rank(-marks)
# assigment
# display the ranks in asending order of ranks
ranks=sort(marks,decreasing = T)
rank(-ranks)

#order 
print(marks)
order(marks)
#random number generations
seq(1,50)
seq(5,100,5)#table of 5
seq(100,1,-7)
runif(10)
c_var=runif(10,1,50)
print(c_var)
ceiling(c_var)
floor(c_var)
round(c_var)
#with replacement and without replacement
sort(sample(1:100,20, replace = T))
sort(sample(1:100,20, replace = F))
#repeat the value
rep(123,6)
rep(c(10,20),each=2)
rep(c(10,20),times=c(2,5))




marks[marks<50]
---------------------------------------------------------------------------------------------------------------
#Character vector


library(stringi)
library(stringr)
install.packages("stringi")
install.packages("stringr")
s1=c("asd","as","xcv","asd","hfg","nvb","piu","vngk")
length(s1)
str1="abc"
str2="ghj"
str3="vbn"
paste(str1,str2,str3)
paste(str1,str2,str3,sep = ",")
# String function
Sentence =" vdas xcv as xz . asasd asd vxc as das ar fg s asd gs asd "
#remove leading and tailing spaces
Sentence = str_trim(Sentence)
print(Sentence)
# selective extraction of text
countr= substr(Sentence,1,6)
print(countr)
toupper(countr)
tolower(countr)
#pattern matching
print(s1)
grep("as",s1)
s1[grep("as",s1)]
#determine whether a word present in a sentence
animals="the forest has lions,tigers,bison,deer and monkey"
grep("tigers",animals)
ret=grep("lion",animals)
print(ret)
ret=grep("buffalo",animals)
print(ret)
if(length(ret)>0) print("found") else print("not found")
#count number of occurence of word
str_count(Sentence,"as")
str_count(Sentence,"a")# count the numbers of individual letter
# character translation from old to new
sentence2="An Apple A day Keeps Doctor Away"
chartr(old = "A",new = "X",sentence2)
chartr(old = "a",new = "x",sentence2)
#find and replace a word with other word
gsub("Apple","ORange",sentence2)
gsub("octor","entist",sentence2)

# vector arithmatics
vector1=c(1,2,3,4,5)
vector2=c(6,7,8,9,0)
total=vector1 + vector2
print(total)

logical_vector=c("True","False")
logical_vector[1]
logical_vector[2]
























