# day 4
# loops
#---------

# 1) for loop
allmonths=month.name
print(allmonths)
len=length(allmonths); print(len)

# method 1
for (i in 1:len){
  mth = allmonths[i]
  print(mth)
}

# method 2
for (mth in allmonths)
  print(mth)

# while
i=10
while(i > 2){
  msg = paste("i =", as.character(i))
  print(msg)
  i=i-1
}
  
#repeat loop
i = 0
repeat{
  msg = paste("i = ", as.character(i))
  print(msg)
  i=i+1
  if (i>5)
    break
}
  
