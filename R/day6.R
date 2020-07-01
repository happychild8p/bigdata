wt <- mtcars$wt
wt
mpg <- mtcars$mpg
mpg
plot(wt, mpg, main="Weight-mpg graph", xlab="Weight"
     , ylab="MilesPerGallon",col="red", pch=20)


target <- mtcars[,c("mpg","disp","drat","wt")]
target
pairs(target, main="Multi plot for relation")

i2 <- iris[,3:4]
i2
point <- as.numeric(iris$Species)
point
color <- c("red","green","blue")
plot(i2, main="Iris plot", pch=point,col=color[point])

beers <- c(5,2,9,8,3,7,3,5,3,5)
bal <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,0.06,0.02,0.05)
tbl <- data.frame(beers,bal)
tbl
plot(bal~beers, data=tbl)
res <- lm(bal~beers, data=tbl)
res
abline(res)
cor(beers,bal)
cor(bal,beers)
  
cor(iris[1:4])
plot(iris[,-5])

mon = 1:12
late <- c(5,8,7,9,4,6,12,13,8,6,6,4)
l2 <- c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(mon, late, main="Late students", type="b",
     lty=1, lwd=2, xlab="Month", ylab="Late count")
plot(mon, late, main="Late Students", type="b", lty=1, col="red",
     xlab="Month", ylab="Late cnt", ylim=c(3,14))
lines(mon,l2,type="b", col="blue")

mlbench

library(mlbench)
data("BostonHousing")
md <- BostonHousing[,c("crim","rm","dis","tax","medv")]
head(md)
nrow(md)
grp <- c()
for(i in 1:nrow(md)){
  if (md$medv[i] >= 25.0){
    grp[i] <- "H"
  } else if (md$medv[i] > 17.0){
    grp[i] <- "M"
  } else {
    grp[i] <- "L"
  }
}  
grp <- factor(grp)  
grp
md <- data.frame(md,grp)  
head(md)  

str(md)
head(md)  
table(md$grp)  
  
par(mfrow=c(2,3))
for(i in 1:5){
  hist(md[,i], main=colnames(md)[i], col="yellow")
}
par(mfrow=c(1,1))

par(mfrow=c(2,3))
for(i in 1:5){
  boxplot(md[,i], main=colnames(md)[i], col="grey")
}
par(mfrow=c(1,1))

boxplot(md$crim~md$grp, main="Crime per person by housing price")
boxplot(md$rm~md$grp, main="# of rooms and housing price")
md
pairs(md[,-6])
cor(md[,-6])
point <- as.integer(md$grp)
point
colo <- c("red","green","blue")
pairs(md[,-6],pch=point, col=colo[point])

table(head(md))
table(head(md$grp))

par(mfrow=c(2,3))
for(i in 1:ncol(md)-1){
  print(i)
}

wt <- mtcars$wt
mpg <- mtcars$mpg
plot(wt, mpg, main="wt-mpg graph", xlab="W", ylab="M", col="Red", pch=20)

v <- c("mpg","disp","drat","wt")
tg <- mtcars[,v]
tg
head(tg)
pairs(tg, main="Multi Plots")

i2 <- iris[,3:4]
pt <- as.numeric(iris$Species)
i2
pt
color <- c("red","green","blue")
plot(i2, main="Iris Plot", pch=pt, col=color[pt])

ber <- c(5,2,9,8,3,7,3,5,3,5)
al <- c(0.1,0.03,0.19,0.12,0.04,0.0095,0.07,0.06,0.02,0.05)

tbl <- data.frame(ber, al)
tbl
plot(tbl)
plot(tbl$al~tbl$ber)
res <- lm(tbl)
res
res <- lm(tbl$al~tbl$ber)
res
abline(res)
cor(ber, al)

cor(iris[,1:4])

a <- iris[,"Petal.Width"]
b <- iris[,"Petal.Length"]
c <- data.frame(a, b)
plot(c)
plot(c$a~c$b)
d <- lm(c)
d
d <- lm(c$a~c$b)
d

m <- 1:12
la <- c(5,8,7,9,4,6,12,13,8,6,6,4)
e <- data.frame(m, la)
plot(m, la, main="Late students", type="b", lwd=2, xlab="Month", ylab="Frequency")
plot(e$la~e$m, type="b")

la2 <- c(4,6,5,8,7,8,10,11,6,5,7,3)
plot(la~m, type="b",lty=1,col="red", xlab="Month", ylab="Late", ylim=c(1,15))
lines(la2~m, type="b", lty=2, col="blue")
library(mlbench)
data("BostonHousing")
md <- BostonHousing[,c("crim","rm","dis","tax","medv")]
head(md)
class(md)
md[md[,"medv"] >= 25.0,"Group"] = "H"
md[md[,"medv"] > 17.0 & md[,"medv"] < 25.0 ,"Group"] = "M"
md[md[,"medv"] <= 17.0,"Group"] = "L" 
md
str(md)
table(md$Group)

par(mfrow=c(2,3))
co <- c("Red","Yellow", "Blue", "Green","grey")

for (i in 1:ncol(md)){
  hist(md[,i], main=colnames(md)[i],col=co[i])
}
par(mfrow=c(1,1))

par(mfrow=c(2,3))
for (i in 1:ncol(md)){
  boxplot(md[,i], main=colnames(md)[i], col=co[i])
}
par(mfrow=c(1,1))

boxplot(md$crim~md$Group, main="Criminal rate by group", xlab="Housing Price Group", ylab="Criminal Rate", col=c("Red","green","blue"))
boxplot(md$rm~md$Group, main="# of Rooms by group", xlab="Group", ylab="# of Rooms")
pairs(md[,-6])

cols <- c("Red","Green","blue")
grp <- as.numeric(factor(md[,6]))
grp

pairs(md[,-6], main="Pairs",pch=grp, col=cols[grp])
cor(md[,-6])

#############cp6 PRT
#1
plot(cars, main="Plot for relationship between speed and braking distance")
#2
pressure
plot(pressure, main="Relationship between Temperature and Pressure"); #plot(pressure$pressure~pressure$temperature)
#3
n3 <- state.x77[,c("Population","Income","Illiteracy","Area")]
pairs(n3); cor(n3)
#4
sp <- as.numeric(iris$Species)
sl <- iris$Sepal.Length
sw <- iris$Sepal.Width
cols
plot(sl~sw, pch=sp, col=cols[sp])
par(mfrow=c(1,2))
plot(sl~sp, pch=sp, col=cols[sp])
plot(sw~sp, pch=sp, col=cols[sp])
par(mfrow=c(1,1))
#5
inc <- c(121,99,41,35,40,29,35,24,50,60)
len <- c(19,20,16,16,18,12,14,12,16,17)
plot(inc~len, main="Relationship btw income and Educational longetivity")
lm(inc~len)
abline(lm(inc~len))
cor(inc, len)
#6
grade <- c(77.5,60,50,95,55,85,72.5,80,92.5,87.5)
tv <- c(14,10,20,7,25,9,15,13,4,21)
plot(grade~tv, main="Relationship btw grade and hours of wacthing TV")
lm(grade~tv)
abline(lm(grade~tv))
cor(grade, tv)
#7
cor(mtcars)
corr <- cor(mtcars)["mpg",-1]
name <- names(corr[which.max(corr)])
drat <- mtcars[,name]
drat
class(name)
plot(mtcars$mpg, mtcars[,name],xlab="mpg", ylab=name)
plot(mtcars$mpg, a)
cor(drat, mtcars$mpg)
lm(drat~mtcars$mpg)
abline(lm(drat~mtcars$mpg))
#8
year <- 2015:2026
pop <- c(51014,51245,51446,51635,51811,51973,52123,52261,52388,52504,52609,52704)
ds <- data.frame(year, pop)
plot(ds)
lm(ds$pop~ds$year)
abline(lm(ds$pop~ds$year))
#9
year <- c(20144,20151,20152,20153,20154,20161,20162,20163,20164,20171,20172,20173)
m <- c(73.9,73.1,74.4,74.2,73.5,73,74.2,74.5,73.8,73.1,74.5,74.2)
f <- c(51.4,50.5,52.4,52.4,51.9,50.9,52.6,52.7,52.2,51.5,53.2,53.1)
plot(m~year,main="Contribution on the Economy by Male and Female ", type="b", lty=2, col="blue", ylim=c(50,75))
lines(f~year, type="b", lty=1, col="red")
#10
head(trees)
plot(trees$Girth~trees$Height)
cor(trees$Girth,trees$Height)
lm(trees$Girth~ trees$Height)
abline(lm(trees$Girth~trees$Height))
pairs(trees)
cor(trees)
o <- Orange
o$Tree
cols <- c(cols, "brown", "Yellow")
#11
plot(o$circumference~o$age, main='Rel btw age and circumference', col=cols[o$Tree])
#12
library(mlbench)
data("Glass")
gl <- Glass
gl
exclusion <- which(colnames(gl) =="Type")
gl <- gl[,-exclusion]
pairs(gl)
cor(gl)
grp <- Glass$Type
grp
cols <- c(cols, "Black")
cols
pairs(gl, pch=as.numeric(grp) , col=cols[as.numeric(grp)])
#13
library(mlbench)
data("Ionosphere")
myds <- Ionosphere[,3:12]
head(myds); str(myds)
rel <- data.frame(cor(myds))
maxie <- c()
class(rel)
for (i in 1:nrow(rel)){
  rel[i,i] = NA
}
rel
which(rel == max(abs(rel), na.rm=T),arr.ind=T)
cor(myds$V9, myds$V11); plot(myds$V9, myds$V11)
#14
LakeHuron
str(LakeHuron)
head(LakeHuron)
years <- 1875:1972
dt <- as.vector(LakeHuron)
plot(dt~years, main="River and Year", type="l", lty=1, lwd=2)
#15
month <- c("JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC")
a49 <- AirPassengers[1:12]
a55 <- AirPassengers[((6*12)+1):(7*12)]
a60 <- AirPassengers[((11*12)+1):(12*12)]
month
data.frame(a49,month)
a55
a60
plot(a49,type="b",main="Passengers per Month in 1949, 1955 and 1960", xlab="Month", ylab="#", col="red",ylim=c(100,625))
lines(a55,type="b",col="blue")
lines(a60,type="b",col="green")
#16
a <- USAccDeaths
d73 <- a[1:12]
d75 <- a[((12*2)+1):(12*3)]
d77 <- a[((12*4)+1):(12*5)]
d73
d75
d77
plot(d73, type="b", main="Casualty over years", xlab="Month", ylab="Numbers", col="red", ylim=c(6950,11500))
lines(d75, type="b", col="blue")
lines(d77, type="b", col="green")





