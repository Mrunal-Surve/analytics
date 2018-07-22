#Data Strucure - Vectors-used to store a row or column#
# c in the above line is used to concatenate data, single or double quote will treat it as sting. This is vector with 5 #values
#to run the code, put the cursor on the line which you want to run or select the code that needs to be run
#to create a seeries of numbers from 1 to n , type 1:n
# round brackets are used to assign and print it at the same time

x = c(1,5,7,8,4) 
x2 <- c(1,2,3,4,5)

x
x2

x4= c('M','F','M','F','M')
x4
(x5 = 1:100)
(x6 = seq(1,100,by=3))
?seq
#a question mark before a cmd will open the help doc for that function
seq(0, 1, length.out = 11)
#lenghtout divides the range 0 to 1 in 11 parts

marks = rnorm(60, mean=60, sd=10)
marks
plot(density(marks))
matrix(marks,ncol = 6)

print(median(x2))

?class
class(v1)
class(v2)
v2=c('a')
v1= c('a','b','c')
v1[v1 %in% v2]


