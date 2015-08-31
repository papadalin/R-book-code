states <- as.data.frame(state.x77[, c("Murder", "Population","Illiteracy","Income","Frost")])
states
#step1. jiancha bianliangjian d xiangguanxing
cor(states)
library(car)
scatterplotMatrix(states, spread = FALSE, lty = 2,main = "Scatter Plot Matrix")
# yixia yong lm() hanshu nihe
fit <- lm(Murder ~ Population + Illiteracy + Income + Frost, data = states)
summary(fit)

# you jiaohuxiang d duoyuan xianxing huigui
fit <- lm(mpg ~ hp + wt + hp:wt, data = mtcars)
summary(fit)

#yong effect() hanshu yong tuxing zhanshi jiaohuxiang d jieguo
library(effects)
plot(effect("hp:wt", fit, xlevels = list(wt = c(2.2, 3.2, 4.2))),multiline = T)

