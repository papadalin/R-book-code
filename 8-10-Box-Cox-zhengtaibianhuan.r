library(car)
summary(powerTransform(states$Murder))
#jieguobiaoming ,keyi yong Murder^0.6 lai zhengtaihua bianliang Murder.
#youyu 0.6 jiejin 0.5, keyi changshi yong pingfanggen bianhuan lai tigao moxing
#zhengtaixing d fuhe chengdu.
#dan z ben li zhong ,langda = 1 d jiashe ye wufa jujue(p = 0.145), yinci
#meiyou qiangyouli d zhengju biaoming benli xuyao bianliang bianhuan.
#zhe yu zuo chu d Q-Qtu jieguo yizhi.

#dang weifan l xianxing jiashe shi, dui yuce bianliang jinxing biahuan hui bijiao youyong.
library(car)
boxTidwell(Murder ~ Population + Illiteracy, data = states)
#jieguo xianshi, shiyong bianhuan Population^0.87 he Illiteracy^1.36 nenggou
#dada gaishan xianxing guanxi. danshi dui Population(p=0.75) he Illiteracy(p=0.54)
#d jifen jianyan you biaoming bianliang bing buxuyao bianhuan.