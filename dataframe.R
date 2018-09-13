#data frame

#rollno, name, batch, gender, marks2

(rollno = 1:30)
(name=paste('student',1:30,sep='-'))
(batch = sample(c(2016,2017,2018), size = 30, replace=T))
table(batch)
(gender = sample(c('M','F'), size=30, replace=T))
table(gender)
(marks1=rnorm(30,mean=65,sd=7))
(marks2=rnorm(30,mean=60,sd=10))

df = data.frame(rollno, name, batch, gender, marks1, marks2, stringsAsFactors = F)
df  
summary(df)
str(df)

df$gender = factor(df$gender)
str(df)

df$batch = factor(df$batch, ordered = T, levels=c('2016','2017','2018'))
str(df)

summary(df)

df$rollno=as.character(df$rollno)
#to convert rollno into character


str(df) #structure
head(df) #first 6 rows default
tail(df) #last 6 rows default
head(df, n=2) 
dim(df) #dimentions
nrow(df)
ncol(df)
names(df)

df[1,1:4] #before colon is rows, after is column
df[1:2,3:4]
df[c(1,3),c(1,4,5,6)]
df[ df$gender=='M', 3:5] #Males ; Display 3 to 5 th col
df[ df$gender=='M'& df$marks1> 70, 3:5] #Males ; Display 3 to 5 th col

table(df$gender=='M' & df$marks1>70)

length(df) #lendth of column
nrow(df[df$gender=='M'& df$marks1>70,]) #list of students with M and marks > 70

#sort
sort(df$marks1) #values arrancged in order
order(df$marks1) #position of data points in order
df[order(df$marks1),] #to arrange the data frame in order of marks
rev(sort(df$marks1)) #to reverse the sorted value

df[order(df$gender,df$batch),] #use of df$ is not a necessary
df[order(gender,-batch),] #the batch order is reversed

#summary/ aggreagating
aggregate(marks1, by=list(df$batch), FUN=mean)
aggregate(marks1 ~ batch, dadta=df, FUN=mean)
aggregate(cbind(marks1,marks2)~ batch + gender, data=df, FUN=mean) #check this, its interestin
aggregate(cbind(marks2,marks1)~ batch + gender, data=df, FUN=max)

df
write.csv(df, "./data/bitsgoa.csv") #save file in csv format

df3= read.csv("./data/bitsgoa.csv")
head(df3)
df3=df3[,-1]
head(df3)

