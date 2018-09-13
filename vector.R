#Vector----
x = c(1,2,3)
x1 = 1:10000
length(x1)
x
x1

x2 = seq(10, 100, 2)
x2

?seq
length(x2)

x3 = seq(from=10, to=100, by=3)
x3
length(x3)


#numeric vector----

(marks = rnorm(30, mean=60, sd=10))
#()will assign and print the values automatically
?rnorm
mean(marks)
mode(marks) #no mode
median(marks)
sd(marks)
var(marks)

#Data types : 1)Nominal 2)Ordinal 3)Interval 4)Ratio

summary(marks)
range(marks)

#properties of DS
length(marks)
str(marks)
class(marks)
hist(marks)
plot(density(marks))

#character vector----

names=c('Ram','Shyam','Robin')
names
length(names)
mena(names)
class(names)
summary(names)

gender = c('M','F','M')
summary(gender)
genderF = factor(gender)
summary(genderF)

(grades = c('A','B','C','D','A','D','A'))
gradesF = factor(grades, ordered = T)
summary(gradesF)
gradesF

gradesF1 = factor(grades, ordered=T, levels=c('D','B','A','C'))
summary(gradesF1)
gradesF1
table(gradesF1)
table(gender)
barplot(table(gradesF1))
pie(table(gradesF1))

#logical vector

(married = c(TRUE,FALSE,T,F,T,F,T,T))
married
sum(married)
table(married)
class(married)
summary(married)

#subset of marks
marks 
trunc(marks); round(marks,1); floor(marks); ceiling(marks)
marks1 = trunc(marks)
marks1[1] #print the 1st value
marks1[18]
marks1[1:5]
marks1[-c(10:15)]
marks1[c(1,5,10,30)]
summary(marks1)

trunc(mean(marks1[c(1,5,10,30)]))
mean(marks1[c(1,5,10,30)])
marks1[marks1>60]
marks1>60
#whereever it was 'TRUE' the valuse were printed
marks1[marks1 > 60 & marks1 < 80]


#
set.seed(12) #this to fix a particular data and given name
gender2 = sample(c('M','F'), size=30, replace = T, prob=c(.9,.1))
gender2
table(gender2) #M-600087
prop.table(table(gender2))
pie(table(gender2))
