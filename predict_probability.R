#Logistic Regression : Predict Probability of Selection 

(df =  read.csv("https://stats.idre.ucla.edu/stat/data/binary.csv"))

## view the first few rows of the data
head(df)
sum(is.na(df))
library(rpart,rpart.plot)

## two-way contingency table of categorical outcome and predictors we want to make sure there are no empty cells
xtabs(~admit + rank, data = df)

dtree3=rpart(admit ~ . , data=df)
#plot the tree
rpart.plot(dtree3, nn=T)

#print cp table
printcp(dtree3)
#prune the tree
ptree3 = prune(dtree3, cp=.019)
rpart.plot(ptree3)
#predict
library(dplyr)
(ndata2 = sample_n(df,10))
predict(dtree3, newdata = ndata2)
