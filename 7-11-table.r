library(vcd)
mytable <- xtabs(~ Treatment + Improved, data = Arthritis)
mytable
margin.table(mytable, 1) #"1"zhi dui diyige bianliang jinxing tongji
prop.table(mytable, 1) #"1"zhi an hang jinxing baifenbi(ji an diyige bianliang)
prop.table(mytable, 2) #"1"zhi an lie jinxing baifenbi(ji an dierge bianliang )
margin.table(mytable, 2)
prop.table(mytable) #mei dierge canshu jiu anzhao quanti
addmargins(mytable)
addmargins(prop.table(mytable)) #moren wei suoyou bianliang chuangjian bianjihe
addmargins(prop.table(mytable,1),2)#an diyige bianliang jinxing prop,ranhou an hang chuangjian bianjihe 
addmargins(prop.table(mytable,2), 1) #leisi d ,jiang hang yu lie dou fanguolai

