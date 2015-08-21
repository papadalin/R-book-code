# kafang dulixing jianyan
library(vcd)
mytable <- xtabs(~Treatment + Improved, data = Arthritis)
chisq.test(mytable)
#p-value di(p < 0.01),shuoming zhiliao qingkuang he gaishan qingkuang buduli
mytable <- xtabs(~Improved+Sex, data = Arthritis)
chisq.test(mytable)
#p-value > 0.01, shuoming Improve & Sex bucunzai guanxi 
#chuxian warning d yuanyin shi,biaozhong d liuge danyuange zhiyi zhi xiaoyu 5,
#zhe keneng hui shi kafang jianyan jinsi wuxiao

#qiyu jianyan fangshi kanshu P167.

