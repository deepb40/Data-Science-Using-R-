# day3:
# matrix

n1=c(16,36,109,80,16,18,29,56,10,56,12,10)
length(n1)

#names of rows and columns
rows=c()
cols = c('a','b','c','d')

#create matrix
m1=matrix(n1,ncol=4,byrow=T,dimnames = list(rows,cols))
m1
#fill by column
m1 = matrix(n1,ncol=4,byrow=F,dimnames = list(rows,cols))
m1

#assignment I
# ----------
# 1)create a vector with 20 integers, chosen at random
# 2)create matrix with 5 columns


#------------
#why is filling by row imp
rows=c()
cols = c("product id","product name", "price", "quantity")
itmes = c('p1', 'tv',19000,10,
          'p2', 'microwave', 1800,3,
          'p3','washing machine', 23901, 4)
mx_items = matrix(items, ncol=4,byrow = T,dimnames=list(rows,cols))
print(mx_items)

#accessing the matrix
m1 # all R,C
m1[1] # r=1,c=1
m1[1,2] # r=1, c=2
m1[1,1:3] # r=1, c=1,2,3
m1[1,] # r=1, all c
m1[1,c(1,3)] # r=1, c=1,3
m1[1,-1] # r=1,c=2,3,4   DELETE ONLY r=1, c=1

mx_items

mx_items[,c('produ50ct id','product name')]
#matric arithematic
range1= c (1:50); print(range1)
range2= c(101:150); print(range2)
mx_r1=matrix(range1, ncol=5, byrow=T)
mx_r2=matrix(range2, ncol = 5, byrow=T)
mx_r1
mx_r2
mx_r1

#2X3 matrix addition

n1=c(1,2,3,4,5,6)
n2=c(11,12,13,14,15,16)
m1=matrix(n1,nrow=2,ncol=3,byrow=T)
m2=matrix(n2,nrow=2,ncol=3,byrow=T)
print(m1);print(m2)
m1+m2


n1=floor(runif(12,-5,10));print(n1)
n2=floor(runif(4,12,20));print(n2)
m1=matrix(n1,row=3,ncol=4,byrow=T); print(m1)
print(n2)
m1%%2
#Assignment 2
do 5X2, 3X4
#matric multiplication using random number
n1=floor(runif(10,1,20));print(n1)
n2=floor(runif(12,12,20));print(n2)
n3=floor(runif(8,7,20));print(n3)
n4=floor(runif(12,5,20));print(n4)
m1=matrix(n1,row=5,ncol=2,byrow=T);print(m1)

