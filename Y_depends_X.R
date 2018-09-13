#How Y depends on X
#Women

women
str(women)
cor(women$height,women$weight) #
cov(women$height,women$weight) #It tells the direction 
plot(women$height,women$weight)

#create Linear Model
fit1 = lm(weight~ height, data=women)
fit2=(lm(weight~ c(1:15), data=women))
summary(fit1)
summary(fit2)
s
#weight = -87 + 3.45*height
fitted(fit1)
cbind(women, fitted(fit1), residuals(fit1))

ndata1 = data.frame(height=c(62.5,63.5))
predict(fit1, newdata=ndata1)
cbind(ndata1, predictwt=predict(fit1, newdata=ndata1))
predict(fit1, newdata=data.frame(women[,1]), type="response")
names(fit1)
#area vs sales


#Multiple linear regression
#mtcars : mpg vs wt, hp
names(mtcars)
fit2 = lm(mpg ~ wt + hp, data=mtcars)
summary(fit2)
range(mtcars$wt) ; range(mtcars$hp)
ndata2 = data.frame(wt=c(2,3,4,2.4),hp=c(57:57))
ndata2
predict(fit2, newdata=ndata2)
