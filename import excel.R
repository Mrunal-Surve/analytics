#df=read.csv('M:\rWork\rProject\analytics\data\file1.csv')

df1=read.csv(file= file.choose())
df1

?mtcars
class(mtcars)
str(mtcars)
summary(mtcars)
write.csv(mtcars,file='./data/mtcars.csv')
