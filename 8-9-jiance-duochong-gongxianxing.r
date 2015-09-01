#liyong tongjiliang VIF(Variance Inflation Factor, fangcha pengzhang yinzi) jinxing
#jiance.yiban qingkuang xia, sqart(vif) > 2 biaoming cunzai duochong gongxianxing
#wenti ,hui daozhi zhixinqujian pengzhang guoda ,yingxiang jiashe jianyan jieguo
library(car)
fit <- lm(formula = Murder ~ Population + Illiteracy + Income + Frost, 
          data = states)
vif(fit)
sqrt(vif(fit)) > 2
#jieguo junwei FALSE, shuoming bucunzai duochong gongxianxing wenti.