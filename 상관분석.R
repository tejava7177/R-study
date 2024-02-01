data(mtcars)
a<-mtcars$mpg
b<-mtcars$hp
cor(a,b)
cov(a,b)
cor.test(a,b, method="person")