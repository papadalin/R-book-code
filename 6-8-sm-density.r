#ke bijiao d hemidu tu.
opar <- par(no.readonly = T)
par(lwd = 2)   #double line wide
library(sm)
attach(mtcars)
#general factor
cyl.f <- factor(cyl, levels = c(4,6,8),
                labels = c('4 cylinder','6 cylinder', '8 cylinder'))

sm.density.compare(mpg, cyl, xlab = "Miles Per Gallon")  # plot density plot
title(main = 'MPG Distribution by Car Cylinders')

colfill <- c(2:(1+length(levels(cyl.f))))
legend(locator(1), levels(cyl.f), fill = colfill) #shubiao xuanze tuli weizhi

detach(mtcars)

par(opar)