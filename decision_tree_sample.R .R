fitness <- read.table("/Users/timothylytkine/Desktop/Work/Decision-Tree-Model-in-R-/fitnessAppLog.csv",sep=",",header=T)
library("rpart")
treeAnalysis <- rpart(PayOrNot~Incomes+GymVisits+State,data=fitness)
treeAnalysis
install.packages("rpart.plot")
library("rpart.plot")
rpart.plot(treeAnalysis,extra=4)
