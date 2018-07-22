#data frame
#sep here is the separator between the name and the serial number
#diff between data frame and matrix is that the df can have carious data types in it
#assigning gender - gender = sample(c('m','F'),size = 60,replace = T))
#to assign how many males and females are there use the prob arg
#set.seed is used to generate the same set of random values
#head used to show first n records - head (df,n=3)
#to remove the decimal using truck,floor, ceiling etc
#str and summary used to show data in a compact manner
#class tells us the type of data type in use
# $ is used to select a particular column in the df


(rollno= c('MBA-01','MBA-02'))
(rollno= paste('MBA',1:60,sep = '-'))
(name = c('Student1','student2'))
(name = paste('Student',1:60, sep = '-'))
df = data.frame(rollno, name)
df
set.seed(1234)
(gender = sample(c('m','F'),size = 60,replace = T, prob = c(.4,.6)))
table(gender)
prop.table(table(gender))

df = data.frame(rollno, name,gender)
df
head(df) 
tail(df)

(marks = rnorm(60, mean=60, sd=10))

marks<- floor(marks)
(grades=sample(c('Good','Poor','Excellent'),size = 60, replace = T, prob = c(0.2,.3,.5)))
table(grades)
grades =factor(grades, levels = c('Poor','Good','Excellent'), ordered = T)
grades
summary(grades)

(df = data.frame(rollno, name,gender,marks, grades, stringsAsFactors = F))
df
str(df)
summary(df)
df$gender=factor(df$gender)
str(df)
summary(df)
class(df)

aggregate(df$marks, by= list(df$gender), FUN=sum)
aggregate(df$marks, by= list(df$gender), FUN=mean)
aggregate(marks~ gender, data = df, FUN=mean)
aggregate(marks~ gender+grades, data = df, FUN=mean)

df$marks2 = runif(60,50,100)
head(df)
aggregate(cbind(marks,marks2)~ gender, data = df, FUN = mean)

df
df [df$gender=='m',]
df[df$gender=='M', c(1,2,3)]




x=c(23.3,34.7)
floor(x); ceiling(x); trunc(x); round(x,1)
?str
