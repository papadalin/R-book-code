options(digits = 2)

Student <- c("John Davis","Angela Will","Bullwinkle Moo","David Jon",
             "Janice Mar","Cheryl Cus","Reuven Ytz",
             "Greg Knox","Joel Eng","Mary Ray")
Math <- c(502,600, 412, 358, 495, 512, 410, 625, 573, 522)
Science <- c(95, 99, 80, 82, 75, 85, 80, 95,89, 86)
English <- c(25, 22, 18, 15, 20, 28, 15, 30, 27, 18)
roster <- data.frame(Student, Math, Science, English,stringsAsFactors = F)
str(roster)
head(roster)
if (FALSE) {
z <- scale(roster[,2:4])
score <- apply(z,1,mean) #zhuyi dierge canshu, "1"zhiding an hang jisuan.
roster <- cbind(roster,score)
}

roster <- transform(roster,score = apply(scale(roster[,2:4]),1,mean))

y <- quantile(roster$score, sort(pretty(c(0.2,0.8),4),decreasing = T))

roster$grade[score >= y[1]] <- "A"
roster$grade[score < y[1] & score >= y[2]] <- "B"
roster$grade[score < y[2] & score >= y[3]] <- "C"
roster$grade[score < y[3] & score >= y[4]] <- "D"
roster$grade[score < y[4]] <- "F"

#roster <- transform(roster, grade = cut(roster$score,5,c("F","D","C","B","A"),
#                                        include.lowest = TRUE))
#bunengyong, yinwei "cut" zhineng dui shuju jinxing junheng de fenduan, er bushi
#genju shuju d shuliang fen baifenwei ,liangge gainian shi butong d .

name <- strsplit((roster$Student)," ")
lastname <- sapply(name, "[", 2 )
#"["shi yige tiqu duixiang d hanshu
firstname <- sapply(name,"[", 1)
roster <- cbind(firstname, lastname, roster[,-1])

roster[order(lastname,firstname),]


