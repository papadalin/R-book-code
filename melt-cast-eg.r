id <- c(1,1,2,2)
time <- c(1,2,1,2)
x1 <- c(5,3,6,2)
x2 <- c(6,5,1,4)
mydata <- data.frame(id,time,x1,x2)
library(reshape)
md <- melt(mydata, id = (c("id", "time")))
#"id" he "time" shi guance "tiaojian",bixu yao zhiding 
#yixia shi genju xuyao zhenghe
cast(md,id+time~variable)

cast(md,id+variable ~ time)
cast(md,id ~ variable + time)
cast(data = md,formula = id~variable, fun.aggregate = sum)
cast(md,time ~ variable,length)