x <- 1:4
y <- 2:3
list <- x+y
list
class(list)

x <- c(17, 14, 4, 5, 13, 12, 10) 
x[x>10] == 4
x


df <- read.table("hw1_data.csv",TRUE,",")
df
df[1:2,]
df[152:153,]
df[47,]
nalist <- is.na(df[,1])
nalist
length(nalist[nalist == TRUE])
mean(df[!nalist,1])

completeDf <- df[complete.cases(df),]
above31 <- completeDf[completeDf$Ozone > 31,]
above31
tempAbove90 <- above31[above31$Temp > 90,]
tempAbove90
mean(tempAbove90$Solar.R)

month6 <- df[df$Month==6,]
month6
mean(month6$Temp)

month5 <- completeDf[completeDf$Month==5,]
month5
max(month5$Ozone)
