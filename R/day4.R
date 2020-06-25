favorite <- c("SUMMER", "SUMMER", "FALL", "SPRING","WINTER","FALL","SUMMER","SPRING","SPRING","SUMMER")
length(favorite)
table(favorite)
table(favorite)/length(favorite)

barplot(table(favorite), main="Favorite Season", col = c("Orange","Green","Red","Blue"))
org_table <- table(favorite)[c(2,3,1,4)]
barplot(org_table, main="Favorite Season", col = c("Green", "Red", "Orange", "Blue"))
pie(org_table, main="Favorite Season", col = c("Green", "Red", "Orange", "Blue"))

fav.col <- c(2,3,2,1,1,2,2,1,3,2,1,3,2,1,2)
table(fav.col)
barplot(table(fav.col), main="Favorite Color", col=c("green","red","blue"))
a <- table(fav.col)
a
names(a) <- c("green","red","blue")
a
barplot(a, main="Favorite Color", col=c("green","red","blue"))
pie(a,main="Favorite Color", col=c("green","red","blue"))

w <- c(60,62,64,65,68,69)
wh <- c(w, 120)
w
wh
mean(w)
mean(wh)
median(w)
median(wh)
mean(w, trim = 0.1)
mean(wh, trim = 0.1)

quantile(wh)
quantile(wh, (0:10)/10)
quantile(wh, (0:5)/5)
quantile(wh, (0:4)/4)
quantile(wh,(0:4)/4)
summary(wh)

wh
var(wh)

dev <- c(wh - mean(wh))
sum(dev^2)/(length(dev))
var1 <- sum(dev^2)/(length(dev)-1) #### Why there is a difference???
sqrt(var1)
sd(wh)

range(wh)
diff(wh)
wh
diff(range(wh))

cars
head(cars)
dist <- cars[,2]
dist
hist(dist, main="Braking Distance", xlab="Dist", ylab="Frequency"
     , border="black", col="gray",las=1 ,breaks=8)
table(dist)

boxplot(dist,main="Braking Distance")
bp <- dist[-which.max(dist)]
bp
boxplot(bp,main="Braking Distance w.o outlier")

boxplot.stats(dist)
boxplot.stats(bp)

boxplot(Petal.Length~Species, data=iris,"Length by breed")
### ????

par(mfrow=c(1,3))
barplot(table(mtcars$carb))

weight <- c(60,62,64,65,68,69)
weight.heavy <- c(weight, 120)
weight
weight.heavy

mean(weight)
mean(weight.heavy)

median(weight)
median(weight.heavy)

mean(weight, trim=0.2)
mean(weight, trim=0.2)

var(weight)
var(weight.heavy)

sd(weight)
sd(weight.heavy)

mydata <- c(60,62,64,65,68,69,120)
quantile(mydata)
quantile(mydata, (1:5)/5)
quantile(c(1,5,10,2,1,7,19))
quantile(c(1,5,10,2,1,7,19), (1:8)/8)
mean(mydata, trim = 0.1)

mv <- 0:100
quantile(mv)
quantile(mv, 1:10/10)
quantile(mv, 1:5/5)

var(mydata) ### (mydata[i] - mean(mydata))^2 until i = length(mydata)
sd(mydata) ###is equals to sqrt(var(mydata))

var(mydata)
sd(mydata)
sqrt(var(mydata))
diff(range(mydata))

vv <- mydata[1:length(mydata)] - mean(mydata)
vv

class(cars)
cars
summary(cars)
str(cars)
dist <- cars[,2]
hist(dist, main= "Histogram for the Braking distance", xlab="Distance", ylab="Frequency", border="blue", col="green",
     las=1 ,breaks=5)

range(dist)
boxplot(dist, main="Braking distance", xlab="1", ylab="meters")
table(dist)

dist2 <- dist[-49]
quantile(dist2)
boxplot(dist2, main="Braking distance", xlab="1", ylab="meters")

m <- mean(dist)
m
for(i in 1:50){
  val <- abs((dist[i] -  m))
  print(val)
}
boxplot.stats(dist2)
dist
dist2
boxplot.stats(dist2)
quantile(dist2)

str(iris)
boxplot(Petal.Length~Species, data = iris, main="Length&Width by breed")

mtcars$carb
str(mtcars)
table(mtcars$carb)
table(mtcars$cyl)
table(mtcars$gear)

par(mfrow=c(1,3))
barplot(table(mtcars$carb), main="Carburetors", xlab="#of carburetors", ylab="frequency", col="blue")
barplot(table(mtcars$cyl), main="Cylender", xlab="#of Cylenders", ylab="frequency", col="Red")
barplot(table(mtcars$gear), main="Gears", xlab="#of Gears", ylab="Frequency", col="Green")

par(mfrow=c(1,1))

#================================
#help(sort)

result <- sort(swiss[,"Agriculture"], decreasing = T)
result
swiss[1, "Agriculture"]
new_swiss <- c()

for (i in 1:nrow(swiss)){
  for (j in 1:nrow(swiss)){
    if(result[i] == swiss[j, "Agriculture"]){
      new_swiss[i] <- result[i]
      names(new_swiss)[i] <- rownames(swiss[j,])
    }
  }
}

new_swiss
swiss[,"Agriculture"]
is.vector(result)
names(result)
rownames(swiss)
str(swiss)
swiss

con <- swiss[,"Agriculture"] == (max(swiss[,"Agriculture"]))
rownames(swiss[con,])
rownames(swiss[which.max(swiss[,"Agriculture"]),])

rownames(subset(swiss, swiss$Agriculture == max(swiss$Agriculture)))

sorted <- c(sort(swiss[,"Agriculture"], decreasing = T))
sorted
agriculture <- c()

for (i in 1:nrow(swiss)){
  for (j in 1:nrow(swiss)){
    if(sorted[i] == swiss[j, "Agriculture"]){
      agriculture[i] <- sorted[i]
      names(agriculture)[i] <- rownames(swiss[j,])
    }
  }
}

sorted
data.frame(new_swiss)

a <- c(2,3,1,5,4)
order(a)
swiss[order(swiss$Agriculture, decreasing = T),]
      
swiss[swiss[,"Catholic"] > 80,"Agriculture"]

n5 <- subset(swiss, swiss$Examination < 20 & swiss$Agriculture < 50)
n5[,c("Examination","Agriculture")]


sum <- 0
for (i in 1:100){
  if (i %% 3 == 0){
    sum <- sum + i
  }
}
sum


primeN <- c()
for (i in 2:1000){
  count = 1
  for (j in 2:(i-1)){
    if (i %% j != 0){
      count = count + 1
    }
    if (j == i-1 & count == i-1){
      primeN <- c(primeN, i)
    }
  }
}
primeN

pivo <- c(0,1)
for(i in 3:40){
  pivo[i] <- pivo[i-2] + pivo[i-1]
}
pivo
library(mlbench)
data("BostonHousing")
head(BostonHousing)
myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]
head(myds)

housing.class <- c() 
for (i in 1:nrow(myds)){
  if (myds[i,"medv"] >= 25.0){
    housing.class[i] <- "H"
  } else if (myds[i,"medv"] >= 17.0){
    housing.class[i] <- "M"
  } else {
    housing.class[i] <- "L"
  }
}
housing.class
grp <- factor(housing.class)
housing.class <- factor(housing.class, levels=c("H","M","L"))
housing.class
myds <- data.frame(myds, housing.class)
head(myds)
table(myds$housing.class)

myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]

myds[myds[,"medv"] >= 17.0 & myds[,"medv"] < 25.0 ,"new"] = "M"
myds[myds[,"medv"] >= 25.0,"new"] = "H"
myds[myds[,"medv"] < 17.0,"new"] = "L"
head(myds)

myds[,"new"] <- factor(myds[,"new"], levels=c("H","M","L"))
myds
str(myds)

#class(myds[,"new"])
#myds[,"new"]

# myds <- BostonHousing[,c("crim","rm","dis","tax","medv")]
# subset1 <- myds[which(myds[,"medv"] >= 17.0),]
# data.frame(subset1, rep("H",nrow(subset1)))  
# 
# nrow(myds)
#class(myds$new)
#class(myds[,"new"])

table(myds$new)

par(mfrow=c(2,3))
str(myds)
myds[,1]

hname <- c("Criminal Rate", "Number of Rooms", "Distance to Center", "Taxation", "Pricing")
colors <- c("Gold", "Red", "Green", "#6D9BDE", "Brown")

for(i in 1:5){
  hist(myds[,i], main = hname[i], col = colors[i])
}
par(mfrow=c(1,1))

par(mfrow=c(2,3))
for(i in 1:5){
  boxplot(myds[,i], main= hname[i], col = colors[i])
}
par(mfrow=c(1,1))

which.max(myds[,"crim"])
BostonHousing[381,]

infert
str(infert)

quantile(myds[myds[,"new"] == "L","crim"])

boxplot(myds$crim ~ myds$new, main="Criminal Rate")
boxplot(myds$rm~myds$new, main="Number of Rooms")
boxplot(myds$dis~myds$new, main="Distance to center")
boxplot(myds$tax~myds$new, main="Taxation")

help(pairs)
pairs(myds[,-6])
color <- c("red","green","blue")
point <- as.integer(myds$new)
point
pairs(myds[,-6],pch=point, col=color[point])
cor(myds[,-6])

sub <- state.x77[state.x77[,"Income"] >= 5000,c("Income","Population","Area")]
#write.csv(sub, "sub.csv")
write(sub, "subtxt.csv")

setwd("/home/heedong")
read.csv("subtxt.csv")
apply(iris[,-5],1,sum)
apply(iris[,-5],2,max)
