# create data frame 
train <- data.frame(ClaimID = c(1,2,3),
                    RearEnd = c(TRUE, FALSE, TRUE),
                    Fraud = c(TRUE, FALSE, TRUE))
# show data frame 
train
# load r part package 
library(rpart)

mytree <- rpart(Fraud ~ RearEnd, data = train, method = "class")
mytree

mytree <- rpart(Fraud ~ RearEnd, data = train, method = "class", minsplit = 2, minbucket = 1)
mytree

library(rattle)
library(rpart.plot)
library(RColorBrewer)
fancyRpartPlot(mytree)




