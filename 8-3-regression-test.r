#1.biaozhun fangfa
fit <- lm(weight ~ height, data = women)
par(mfrow = c(2,2))
plot(fit)#huachu d jieguo gen shushang butong, wei chachu yuanyin
fit
summary(fit)

#2. erci nihe d zhenduan tu
fit2 <- lm(weight ~ height + I(height^2),data = women)
par(mfrow= c(2,2))
plot(fit2) #jieguo zhengchang 

#cong tuxing zhong keyi dedao ,di 13 he 15 lianggedian dui jieguo you jiaoda yingxiang
#yinwei 13 meiyou z 45 du xiexian shang ,shi yichangzhi;
#15 d cook zhi jiaoda,
#shanchu zhe lianggedian ,dui nihe jieguo hui you jiaoda d yingxiang 
newfit <- lm(weight ~ height + I(height^2), data = women[-c(13,15),]) #nihe xichu dian hou d moxing
plot(newfit)
#dan yiban bu shanchu dian

#yingyong jiben fangfa guancha 'states' d duoyuan huigui wenti
fit <- lm(Murder ~ Population + Illiteracy + Income + Frost, data = states)
par(mfrow = c(2,2))
plot(fit)
