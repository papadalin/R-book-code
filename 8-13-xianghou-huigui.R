
states <- as.data.frame(state.x77[, c("Murder", "Population","Illiteracy","Income","Frost")])
#zhubu huigui fa
library(MASS)
fit1 <- lm(Murder ~ Population + Illiteracy + Income + Frost, data = states)
stepAIC(fit1, direction = 'backward')
#zhubu qudiao zuimoduan bianliang,zhidao AICzhi buzai jianshao
#cunzai wenti: buneng ba suoyou keneng d moxing dou pingjia l 

#quanziji huigui
library(leaps)
leaps <- regsubsets(Murder ~ Population + Illiteracy + Income +
                            Frost, data = states, nbest = 4)
plot(leaps, scale = "adjr2")

library(car)
subsets(leaps, statistic = "cp", main = "Cp Plot for All Subsets Regression")
abline(1,1, lty = 2, col = "red")
#quanziji huigui sudu jiaoman ,qie buneng jieshi d moxing bing meiyou shiji yiyi
#nihe xiaoguo jia er meiyou yiyi d moxing dui ni haowu bangzhu,
#zhuti beijing zhishi d lijie caineng zuizhong zhiyin ni huode lixiang d moxing 
