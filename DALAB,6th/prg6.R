rm(list = ls(all.names = TRUE)) 
input = read.csv("C:/Users/Students/Desktop/DA Lab Dataset/ghi.csv")
print(input)
x = cor(input[,c(2:7)])
print(x)
pairs(input[,c(2:7)])
y = x[6,1:5]                     
print(y)

x= sort(y,decreasing = TRUE)
print(x)
cnt =1
print("selected attributes")
while(cnt<=length(y))     
{  if (y[cnt]>.5)
  print(y[cnt])
  cnt=cnt+1
}

or

rm(list = ls(all.names = TRUE))

input <- read.csv("C:/Users/Downloads/ghi.csv")

print(input)

x <- cor(input[, 2:7])

print(x)

pairs(input[, 2:7])

y <- x[6, 1:5]

print(y)

y <- sort(y, decreasing = TRUE)

print(y)

cnt <- 1

cat("Selected attributes:\n")

while(cnt <= length(y))
{
  if(y[cnt] > 0.5)
    print(y[cnt])

  cnt <- cnt + 1
}
