wt <- mtcars$wt
wt
mpg <- mtcars$mpg
mpg
plot(wt, mpg, main="Mass-MPG Graph", xlab="Mass", ylab="MPG", col="Red", pch=20)
mtcars[,c("mpg","wt")]

a <- mtcars[,c("mpg","disp","drat","wt")]
pairs(a, main="Multi Plots")
colnames(mtcars)
help(mtcars)

ds <- iris[,3:4]
point <- as.numeric(iris$Species)
point
#plot(table(point), main= "Test")
ds
color <- c("Red", "Green", "Blue")
plot(ds, main="Petal length, width by Species", pch =c(point), col = color[point])

beers <- c(5,2,9,8,3,7,3,5,3,5)
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,0.06,0.02,0.05)

tbl <- data.frame(beers,bal)
tbl
help(lm)
#plot(tbl$beers, tbl$bal)
plot(bal~beers, data=tbl)
res <- lm(bal~beers, data=tbl)
res
abline(res)
cor(beers,bal)

head(iris[,1:4])

cor(iris[,1:2])
cor(iris[,1:3])
cor(iris[,1:4])

month <- 1:12
late <- c(5,8,7,9,4,6,12,13,8,6,6,4)
plot(month,late, main="On Late Rate", type="b", lty=1, lwd=2, xlab="Month", ylab="Late cnt", col="Brown")

month <- 1:12
late1 <- c(5,8,7,9,4,6,12,13,8,6,6,4)
late2 <- c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(month, late1, main="Late Students", type="b", lty=1,col="red",xlab="Month", ylab="Numbers", ylim=c(2,13))
lines(month, late2, type="b", col="blue")

late3 <- c(3,3,3,3,6,7,7,6,3,3,3,3)
late4 <- c(2,3,4,5,6,7,8,9,10,11,12,13)
lines(month, late3, type="b", col="Green")
lines(month, sort(late4, decreasing = T), type="b", col="Brown")
lines(month, iris[1:12,"Sepal.Length"], type="o", , lwd = 5, col="Yellow")

sample(1:10,4)
# c <- data.frame(month, late1)
# c
# d <- data.frame(c, late2)
# d
# plot(c, main="la",type="b")
# lines(d[,1], type="b", col="red")

a <- c("WINTER", "SUMMER", "SPRING", "SUMMER", "SUMMER","FALL","FALL", "SUMMER", "SPRING", "SPRING")
table(a)
table(a)/length(a)
barplot(table(a), main="what", col=c("red","blue","yellow","Green"))
class(table(a))

fc <- c(2,3,2,1,1,2,2,1,3,2,1,3,2,1,2)
ds <- table(fc)
ds
barplot(ds,main="what",col=unique(fc))
unique(fc)

pie(ds,main="what",col=unique(fc))

mean(fc)
median(fc)
mean(fc, trim=0.1)

weight <- c(60,62,64,65,68,69)
w.h <- c(weight, 120)
quantile(weight)
quantile(w.h)

quantile(w.h, (0:10)/10)

wh <- w.h
var(wh)
sd(wh)
sqrt(var(wh))
range(wh)
diff(range(wh))

hist(fc,main="fav color")
cars
str(cars)
head(cars)

d <- cars[,2]
hist(d,main="braking distance", xlab="dis",breaks=20)
boxplot(d, main="quant braking dis")

boxplot.stats(d)
elp("boxplot.stats")
quantile(d)

boxplot(iris[,-5])
boxplot(Petal.Length~Species, data=iris, main="Le")

par(mfrow=c(1,3))
barplot(table(mtcars$carb), main="Bp of Carburetors", xlab="#of carb", ylab="frequency", col="blue") 
barplot(table(mtcars$cyl), main="Bp of Cylender", xlab="#of cylender", ylab="frequency", col="red")
barplot(table(mtcars$gear), main="BP of gear", xlab="$of gear", ylab="frequency", col="green")
par(mfrow=c(1,1))

edu <- infert[,"education"]
edu
class(edu)

z <- c(1,2,3,NA,5,NA,8)
sum(z)
is.na(z)
sum(is.na(z))
sum(z, na.rm=T)
z[is.na(z)] <- 0
z

z <- c(1,2,3,NA,5,NA,8)
z2 <- c(5,8,1,NA,3,NA,7)

z[is.na(z)] <- 0
z
na.omit(z2)
z3 <- as.vector(na.omit(z2))
z3

str(infert)
head(infert)

##CP5 prtq
#1
edu <- infert$education
edu
unique(edu)

table(edu)
barplot(table(edu), main="Frequency how long child get Education")
pie(table(edu), main="Frequency length of Education")
#2
g <- c("F","F","F","M","M","F","F","F","M","M")
table(g))
barplot(table(g), main="Ratio of Female to Male", col=c("Pink", "SkyBlue"))
pie(table(g), main="Pie chart to show the ratio")
#3
s <- c("SUMMER","WINTER","SPRING","FALL","SUMMER","FALL","WINTER",'SUMMER','SUMMER','FALL')
s
table(s)
barplot(table(s), main="Table of favorite season", col=c("Orange","Green","Yellow","SKyblue"))
pie(table(s),main="Pie chart for favorite season")
ss <- c(table(s)["SPRING"],table(s)["SUMMER"],table(s)["FALL"],table(s)["WINTER"])
barplot(ss, main="Table of favorite season", col=c("Orange","Green","Yellow","SKyblue"))
#4
sc <- c(95,85,73,80,85,65,78,50,68,96)
names(sc) <- c('KOR','ENG','ATH','HIST','SOC','MUS','BIO','EART','PHY','ART')
sc
mean(sc); median(sc)
quantile(sc); summary(sc)
sd(sc)
names(sc[which.max(sc)])
boxplot(sc,main="Range of score the person got")
boxplot.stats(sc)$out
hist(sc, main="Grade range for the student", col="Purple")
#5
summary(mtcars$wt)
mean(mtcars$wt, trim=0.15)
sd(mtcars$wt)
table(mtcars$cyl)
barplot(table(mtcars$cyl), main="# of # of cylenders")
hist(mtcars$wt, main="Range and occurence of Car Weight")
boxplot(mtcars$wt, main="Quantile and range in Car Weight");boxplot.stats(mtcars$wt)
boxplot(mtcars$disp, main="info of Exhaust"); boxplot.stats(mtcars$disp)
mtcars$mpg
mtcars$gear
boxplot(mtcars$mpg~mtcars$gear, main="MilesPerGallon by # of gears")
#6
trees
mean(trees$Girth);median(trees$Girth);mean(trees$Girth,trim=0.15);sd(trees$Girth)
hist(trees$Girth, main="Occurence of range of girth")
boxplot(trees$Girth, main="Quantile of girth")
mean(trees$Height);median(trees$Height);mean(trees$Height,trim=0.15);sd(trees$Height)
hist(trees$Height, main="Range of Height")
boxplot(trees$Height, main="Quantile of Height")
#7
head(Orange)
str(Orange)
mean(Orange$age); median(Orange$age); mean(Orange$age, trim=0.15); sd(Orange$age)
hist(Orange$age, main="Histogram for age of trees")
boxplot(Orange$age~Orange$Tree, main="Quantile for each group of Orange trees")

o2 <- Orange[Orange[,"Tree"] !=2,]
o2 
mean(o2$circumference); median(o2$circumference); mean(o2$circumference, trim=0.15); sd(o2$circumference)
hist(o2$circumference, main="Histogram for the circumference of trees")
boxplot(Orange$circumference~Orange$Tree, main="Quantile for each tree group")









