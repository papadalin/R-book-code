fit <- lm(weight ~ height, data = women)
summary(fit)
women$weight
fitted(fit) #liechu nihe moxing d yucezhi
residuals(fit) #liechu nihe moxing d canchazhi
plot(women$height, women$weight,
     xlab = "Height ( in inches)",
     ylab = "Weight ( in pounds)")
abline(fit)
fit2 <- lm(weight ~ height + I(height^2), data = women)
fitted(fit2)
fit2
summary(fit2)
plot(women$height, women$weight, xlab = "Height (in inches)", ylab = "Weight (in lbs)")
lines(women$height, fitted(fit2))
fit3 <- lm(weight ~ height + I(height^2) + I(height^3), data = women)
summary(fit3)
lines(women$height, fitted(fit3),col = "red")
library(car)
scatterplot(weight ~ height, data = women, 
            spread = FALSE, lty = 2,
            pch = 19, 
            main = "Women Age 30-39",
            xlab = "Height (inches)", 
            ylab = "Weight (lbs.)")