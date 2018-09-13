# Subset
#subset( ) function is the easiest way to select variables and observations.

mtcars
# using subset function 
newdata <- subset(mtcars, mpg >=20 & mpg < 30, 
                  select=c(mpg, disp))
newdata
#we select cars with mpg >= 20   and < 10 
#we keep variables mpg and disp

# using subset function (part 2)
names(mtcars)
head(mtcars)
newdata <- subset(mtcars, cyl == 6 & disp > 150,select=mpg:wt)
newdata

