states <- state.x77[,1:6]
states 
cov(states)  #jisuan fangcha,xiefangcha
cor(states)  #jisuan pearson jicha xiangguan xishu 
cor(states, method = 'spearman') #jisuan spearman dengji xiangguan xishu
#moren qingkuang xia dedao d shi yige fangzhen.liru :
x <- states[,c('Population', 'Income', 'Illiteracy', 'HS Grad')]
y <- states[,c('Life Exp', 'Murder')]
cor(x,y)
library(ggm)
pcor(c(1,5,2,3,6), cov(states))
states <- as.data.frame(cbind(state.region, state.x77))
kruskal.test(Illiteracy ~ state.region, data = states)
