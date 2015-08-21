library(vcd)
mytable <- xtabs(~Treatment + Improved, data = Arthritis)
assocstats(mytable)
#jiaoda d zhi yiwei zhe jiaoqiang d xiangguanxing