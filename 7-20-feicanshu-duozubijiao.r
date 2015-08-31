class <- state.region
str(class)
head(class)
var <- state.x77[,c("Illiteracy")]
var
mydata <- as.data.frame(cbind(class, var))
rm(class, var)
mydata
library(npmc)
##npmc is not available