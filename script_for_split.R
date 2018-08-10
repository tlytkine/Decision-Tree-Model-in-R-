# Data set before being split 
MyData <- read.csv(file="/Users/timothylytkine/Desktop/Predictive Modeling Project/permits_accident_data_2013_Present.csv", header=TRUE, sep=",")

# Copies of original data set to use later 
MyData1 <- MyData 
MyData2 <- MyData 
MyData3 <- MyData 

# load r part library 
library(rpart)

# create tree using unsplit data set 
mytree <- rpart(Accident ~ Proposed.Stories + Job.Type + Borough + Square.Footage + General.Contractor + Cost.Estimate , data = MyData, method = "class", minsplit = 2, minbucket = 1)

# Syntax for binary prediction and probability
# unsplit data set  
MyData$Accident_Pred <- predict(mytree, newdata = MyData, type="class")
MyData$Accident_Pred <- predict(mytree, newdata = MyData, type="prob")
printcp(mytree)


# load dplyr library 
library(dplyr)

# use copy of original data set to split into training and testing data set 
training_set <- sample_frac(MyData1,0.8)
sid<-as.numeric(rownames(training_set))
testing_set<-MyData1[-sid,]
# 80 percent of data for training 
training_set 
# 20 percent of data for testing 
testing_set 



