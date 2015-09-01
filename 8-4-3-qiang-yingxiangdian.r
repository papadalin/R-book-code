#Cook's D value > 4/(n-k-1), ze biaoming ta shi qiang yingxiang dian.
#qizhong n wei yangben daxiao , k shi yuce bianliang shumu .
fit <- lm(formula = Murder ~ Population + Illiteracy + Income + Frost, 
          data = states)
cutoff <- 4/(nrow(states) - length(fit$coefficients) - 2)
plot(fit, which = 4, cook.levels = cutoff)
abline(h = cutoff, lty = 2, col = "red")

# p207 bianliang tianjiatu
library(car)
avPlots(fit, ask = F, onepage = T, id.method = "identify")

#jiang liqundian, gangganzhi,qiang yingxiangdian d xinxi zhenghe dao yifu tuxing
library(car)
influencePlot(fit, id.method = 'identify', main = 'Influence Plot',
              sub = "Circle size is proportional to Cook's distance")