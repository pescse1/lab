print(women)
x=women$height
y=women$weight
mean(x)
mean(y)
cov(x,y)
cov(x,y)
print(cov(x,y, method = "pearson"))
plot(x,y,main="positive",xlab="height",ylab="weight")



print(mtcars)
x=mtcars$wt
y=mtcars$mpg 
mean(x)
mean(y)
cov(x,y)
cov(x,y)
print(cov(x,y, method = "pearson"))
plot(x,y,main="negative co relation",xlab="weight",ylab="mpg")