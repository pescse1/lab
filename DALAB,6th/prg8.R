library(arules)

SupMarTra<- read.csv("G:/SNACK.csv", header = T, colClasses = "factor")

summary(SupMarTra)

length(SupMarTra)

dim(SupMarTra)

View(SupMarTra)

rules<- apriori(SupMarTra)

rules<-apriori(SupMarTra, parameter=list( supp = .5, conf = .8))
inspect(rules)

rules<- apriori(SupMarTra, parameter=list(minlen = 2, maxlen = 5, supp=.5, conf=.8))
inspect(rules)

rules<- apriori(SupMarTra, parameter=list(minlen = 2, maxlen = 5, supp=.5, conf=.8), appearance  = list(none=c("I1=No","I2=No","I3=No","I4=No","I5=No")))
inspect(rules)

write(rules, file = "D:/data3.CSV", sep = ",")

library(arulesViz)
plot(rules)
plot(rules, method = "grouped",measure = "confidence")
plot(rules, method = "graph", measure = "confidence",control = list(type="items"))

