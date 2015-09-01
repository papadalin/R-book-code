#xianxing moxing jiashe d zonghe jianyan
fit <- lm(formula = Murder ~ Population + Illiteracy + Income + Frost, 
          data = states)
library(gvlma)
gvmodel <- gvlma(fit)
summary(gvmodel)
