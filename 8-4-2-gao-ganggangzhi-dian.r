#tongguo 'hat statistic' panduan
#duiyu geiding d shujuji, maozi junzhi wei p/n, qizhong p shi moxing guji d 
#canshu shumu(baohan jiejuxiang), n shi yangbenliang.
#ruo guancedian d maozizhi dayu maozi junzhi d 2 huo 3 bei, keyi rending wei 
#gao ganggangzhi dian.
fit <- lm(formula = Murder ~ Population + Illiteracy + Income + Frost, 
          data = states)
hat.plot <- functioni(fit) {
        p <- length(coefficients(fit))
        n <- length(fitted(fit))
        plot(hatvalues(fit), main = "Index Plot of Hat Values")
        abline(h = c(2,3)*p/n, col = "red", lty = 2)
        identify(1:n, hatvalues(fit), names(hatvalues(fit)))#dingwei hanshu,yi 
        #jiaohu moshi huitu, dianji xuyao d dian ,ranhou jinxing biaozhu
}
hat.plot(fit)
#gao ganggangzhi dian buyiding shi liqundian.keneng you qianglie yingxiang ,ye keneng
#bing meiyou.