states <- as.data.frame(state.x77[, c("Murder", "Population","Illiteracy","Income","Frost")])

library(car)
fit <- lm(Murder ~ Population + Illiteracy + Income + Frost, data = states)
par(mfrow = c(1,1))
qqPlot(fit, labels = row.names(states), id.method = "identify", simulate = T,
       main = "Q-Q Plot")
#jide 'P' daxie caishi car bao zhong d function
#guanzhu Nevada zhedian, li zhixian jiaoyuan ,kanqilai you henda d zhengcancha zhi
states["Nevada",]
fitted(fit)["Nevada"]
residuals(fit)["Nevada"] 
rstudent(fit)["Nevada"]#keyi faxian yuce moxing bi shiji xiaohenduo
#conger keyi jinyibu ti wenti:'weishenme Nevada d moushalv hui bi yucezhi gao?'

#Durbin-Watson-test : jianyan shifou you xulie xiangguanxing
fit
durbinWatsonTest(fit)
#you p zhi jiaoxiao kanchu wu xiangguanxing   P201


#chakan chengfen cancha tu
crPlots(fit)

# panduan wucha shifou hengding 
ncvTest(fit)
spreadLevelPlot(fit) #jianyi mi ci zhuanhuan wei 1.2, jiejin 1,buxuyao jinxing zhuanhuan
#ruguo jianyi mici zhuanhuan wei 0.5,ze y zhuanhuan wei squar(y) jiu keneng rang
#baochi tongfangchaxing 
#ruguo jianyi mici zhuanhuan wei 2, name y zhuanhuan wei y^2,jiu keneng rang 
#baochi tongfangcha xing