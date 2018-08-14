MyData <- read.csv(file="/Users/timothylytkine/Desktop/Predictive Modeling Project/permits_accident_data_2013_Present.csv", header=TRUE, sep=",")

library(randomForest)
install.packages("randomForest",dependencies = T)

fit <- randomForest(Accident ~ Proposed.Stories + Job.Type + Borough + Square.Footage + General.Contractor + Cost.Estimate, data = MyData, importance = TRUE, pr0ximity = TRUE, na.action = na.roughfix)



                    