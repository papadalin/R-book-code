options(digits = 3)
attach(mtcars)
aggdata <- aggregate(mtcars, by = list(cyl,gear), FUN = mean, na.rm = T)
aggdata
