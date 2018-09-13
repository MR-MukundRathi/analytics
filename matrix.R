#matrices
?matrix

(m1=matrix(1:12,nrow=4,ncol=4))
marks3=runif(30,50,90)
m2=matrix(marks3,nrow=6)
m2
(x=1:5)
(x1 <- 1:5)

marks4=floor(runif(30,50,90))
m3=matrix(marks4,nrow=6)
m3

marks4=floor(runif(30,50,90))
m4=matrix(marks4,nrow=6, byrow=T)
m3

marks4=floor(runif(30,50,90))
m3=matrix(marks4,nrow=5, byrow=T)
m3

#summary
colSums(m4)
rowSums(m4)
colMeans(m4)
rowMeans(m4)
sum(m4)
m4[m4>70]

m4
m4[1,]
m4[,2]
m4[3,5]
m4[1:2,3:5]

