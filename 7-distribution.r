vars <- c('mpg','hp', 'wt')
head(mtcars[vars])
summary(mtcars[vars])
mystats <- function(x, na.omit = F) {
        if (FALSE){
                if (na.omit)
                        x <- x[!is.na(x)]
        }  #yuanshu daima, dan ganjue youwu ,zhijie gaicheng xiamian zheju l 
        x <- na.omit(x) 
        m <- mean(x)
        n <- length(x)
        s <- sd(x)
        skew <- sum((x-m)^3/s^3)/n
        kurt <- sum((x-m)^3/s^4)/n-3
        return(c(n=n, mean=m, stdev = s, skew = skew, kurtosis = kurt))
}
sapply(mtcars[vars], mystats)

library(Hmisc)
describe(mtcars[vars])

library(pastecs)
stat.desc(mtcars[vars])

library(psych)
describe(mtcars[vars])