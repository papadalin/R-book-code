vars <- c('mpg','hp', 'wt')
aggregate(mtcars[vars], by = list(am = mtcars$am), mean)
aggregate(mtcars[vars], by = list(am = mtcars$am), sd)
#aggregate zhineng diaoyong dan fanhuizhi hanshu,ruoyao yici fanhui ruogan tongjiliang,yong by().

dstats <- function(x) (c(mean = sapply(x,mean), sd = sapply(x,sd)))
by(mtcars[vars], mtcars$am, dstats)
#zhebufen shu chucuo l .mean zhineng yong z xiangliang ,buneng yong zai data.frame
#zhe daozhi zhijie mean hui rang by() ye zhi neng yong z xiangliang 
#yinci ba shangmian d mean gaicheng sapply(), jiu keyi yongzai data.frame shang 
