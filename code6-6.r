par(mfrow = c(2,2))
hist(mtcars$mpg)

hist(mtcars$mpg,breaks = 12, col = "red", xlab = "Miles Per Gallon",
     main = "Colored histogram with 12 bins")

#tianjia zhouxutu
hist(mtcars$mpg,
     freq = F,
     breaks = 12, 
     col = "red", 
     xlab = "Miles Per Gallon",
     main = "Histogram, rug plot, density curve")
rug(jitter(mtcars$mpg))
lines(density(mtcars$mpg), col = 'blue', lwd = 2)

#tianjia zhengtai midu quxian he waikuang
x <- mtcars$mpg
h <- hist(x,
          breaks = 12,
          col = 'red',
          xlab = "Miles Per Gallon",
          main = "Histogram with normal vurve and box")
xfit <- seq(min(x), max(x), length.out = length(x))
yfit <- dnorm(xfit, mean = mean(x), sd= sd(x))
yfit <- yfit*diff(h$mids[1:2])*length(x)
lines(xfit, yfit, col = "blue", lwd = 2)
box()


