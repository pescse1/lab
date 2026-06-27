install.packages("arules")
install.packages("arulesViz")
installed.packages("RColorBrewer")
library(arules)
library(arulesViz)
library(RColorBrewer)
SupMarTra<-read.transactions("E:/Snakyy.csv",format="basket",sep=",")
summary(SupMarTra)
dim(SupMarTra)
View(SupMarTra)
rules=apriori(SupMarTra)
inspect(rules)
rules=apriori(SupMarTra, parameter = list(supp=.3,conf=.8))
inspect(rules)
rules=apriori(SupMarTra,parameter = list(supp=.5,conf=.8))
inspect(rules)
plot(rules)
plot(rules,method = "graph")

or

install.packages("arules")
install.packages("arulesViz")
install.packages("RColorBrewer")

library(arules)
library(arulesViz)
library(RColorBrewer)

SupMarTra <- read.transactions("C:Downloads/Snakyy.csv",
  format = "basket",
  sep = ","
)

summary(SupMarTra)
dim(SupMarTra)

rules <- apriori(SupMarTra)
inspect(rules)

rules <- apriori(
  SupMarTra,
  parameter = list(supp = 0.3, conf = 0.8)
)
inspect(rules)

rules <- apriori(
  SupMarTra,
  parameter = list(supp = 0.5, conf = 0.8)
)
inspect(rules)

plot(rules)
plot(rules, method = "graph")


