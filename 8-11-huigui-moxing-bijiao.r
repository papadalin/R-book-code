fit1 <- lm(formula = Murder ~ Population + Illiteracy + Income + Frost, 
                     data = states)
fit2 <- lm(formula = Murder ~ Population + Illiteracy, data = states)
anova(fit2, fit1)
#cichu, moxing1 qiantao z moxing 2 zhong. anova() hanshu tongshi hai dui shifou
#yinggai tianjia Income he Frost dao xianxing moxing zhong jinxing l jianyan.
#youyu jianyan buxianzhu(p = 0.994), yinci wm keyi dechu jielun: buxuyao jiang 
#zhe liangge bianliang tianjia dao xianxing moxing zhong ,keyi jiang tamen 
#cong moxing zhong shanchu.

#AIC(Akaike Information Criterion, chichi xinxi zhunze)ye keyi yonglai bijiao moxing.
#AIC value yuexiao d moxing yao youxian xuanze, ta shuoming moxing yong jiaoshao
#d canshu huode l zugou d nihedu.
AIC(fit1, fit2)
#you AIC value biaoming meiyou Income he Frost d moxing gengjia.
#AIC buxuyao qiantao moxing