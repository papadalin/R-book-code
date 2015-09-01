#biaozhunhua canchazhi > 2 or < -2 d dian ,keneng shi liqundian
library(car)
fit <- lm(formula = Murder ~ Population + Illiteracy + Income + Frost, 
          data = states)
outlierTest(fit)
