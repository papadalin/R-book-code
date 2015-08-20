#bianliang y~A,wei leibeixing bianliang A d meigezhi binglie d shengcheng shuzhixing bianliang y d xiangxiantu 
boxplot(mpg~cyl,data = mtcars,
        main = 'Car Mileage Data',
        xlab = 'Number of Cylinders',
        ylab = 'Miles Per Gallon')

#chuangjian qigang shuliang d yinzi
mtcars$cyl.f <- factor(mtcars$cyl,
                       levels = c(4,6,8),
                       labels = c("4","6", "8"))
#chuangjian biansuxiang leixing d yinzi
mtcars$am.f <- factor(mtcars$am,
                      levels = c(0,1),
                      labels = c("auto", "standard"))
#general boxplot
boxplot(mpg ~ am.f *cyl.f,
        data = mtcars,
        varwidth = T,
        col = c("gold", "darkgreen"),
        main = "MPAG Distribution by Auto Type",
        xlab = "Auto Type")