#List avl packages
library()

#Total Avl Packages
nrow(available.packages())

#Install Package amap
install.packages('amap')

#Load package
library(amap)
library(dplyr)

#Find functions in package
library(help=amap)

#Help wrt a package
help(package='amap')

#Remove Package
remove.packages('quantmod')
library(quantmod)

#Understanding dplyr
mtcars
head(mtcars)
names(mtcars)
mtcars %>% group_by(gear) %>% summarize(mean(mpg), max(mpg))
mtcars %>% group_by(gear, carb) %>% summarize(mean(mpg), max(mpg), min(hp))
filter(mtcars %>% group_by(gear,carb) %>% summarise_all(mean), mpg>15)
filter(mtcars %>% group_by(gear,carb) %>% arrange(desc(gear)), mpg>15)
mtcars %>% filter(mpg>25) %>% select(mpg,gear,wt)

mtcars %>% group_by(gear) %>% summarise_if(is.numeric, mean)
?summarize_if
pull(mtcars, gear)


sales %>% group_by(region) %>% summarise_if(is.numeric, mean)
