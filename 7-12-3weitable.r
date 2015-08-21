mytable <- xtabs(~Treatment + Sex + Improved, data = Arthritis)
mytable
ftable(mytable)
margin.table(mytable, 2)
margin.table(mytable, 1)
margin.table(mytable, 3)
margin.table(mytable, c(1,3))
ftable(prop.table(mytable, c(1,2)))
ftable(addmargins(prop.table(mytable, c(1,2)), 3))